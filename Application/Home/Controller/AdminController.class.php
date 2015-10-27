<?php
namespace Home\Controller;
use Think\Controller;
class AdminController extends Controller {
    public function index(){
        if(!session('admin')){
            $this->error('Please Login!',U('Admin/login'));
        } else {
            $mColumn = M('Column');
            $this->assign('column',$mColumn->order('cid asc')->select());
            $this->display();
        }
    }
    public function login(){
        $mAdmin = M('Admin');
        switch(1){
        case IS_GET:
            $this->display();
            break;
        case IS_POST:
            $admin = $mAdmin->where('username="%s"',I('post.username'))->find();
            if($admin['password'] === md5(I('post.password'))) {
                session('admin',$admin);
                $this->success('Logined!!',U('index'));
            } else {
                $this->error('Please try again or check if you have the Capslock on');
            }
        }
    }
    public function logout(){
        session('admin',0);
        $this->success('Success!',3,U('Index/index'));
    }
    public function edit(){
        //TODO:edit all the type of columns
        if(!session('admin')){
            $this->error('请登录！',U('login'));
            return;
        }
        $mColumn = M('Column');
        $column = $mColumn->where(I('get.'))->find();
        if(!$column) $this->error('没有此栏目！');
        switch ($column['type']){
        case C('TYPE_ARTICLE'):
            $mArticle = M('Article');
            $content = $mArticle->where(['cid'=>I('get.cid')])->find();
            $content['content'] = htmlspecialchars_decode($content['content']);
            if(IS_GET){
                $columns = $mColumn->order('cid asc')->select();
                $this->assign('column',$columns);
                $this->assign('art',$content);
                $this->display('article');
            }
            if(IS_POST){
                $mArtile->create();
                if ($mArtile->save()){
                    $this->success('编辑成功！');
                } else {
                    $this->error('编辑失败！');
                }
            }
            break;
        case C('TYPE_NORMAL'):
            $mList = M($column['table']);
            if(IS_GET){
                if('delete'==I('get.method')){
                    $result = $mList->where(['id'=>I('get.id')])->delete();
                    if($result) $this->success('删除成功！');
                    else $this->error('删除失败！');
                } else {
                    $list = $mList->where(['cid'=>$column['cid']])->select();
                    $this->assign('list',$list);
                    $this->assign('table',ucfirst($column['table']));
                    $this->display('list');
                }
            }
            if(IS_POST){
                    $result = $mList->add(I('post.'),true);
                    if($result) $this->success('编辑成功！');
                    else $this->error('失败！');
            }
            break;
        case C('TYPE_SPECIAL'):
            redirect(U('edit'.ucfirst($column['path'])));
        }

        
    }
    public function delete(){
        $mColumn = M('Column');
        $result = $mColumn->where(['cid'=>I('get.cid')])->delete();
        if($result) $this->success('成功！');
        else $this->error('失败！');
    }
    public function editArticle(){
        if(!session('admin')){
            $this->error('请登录！',U('login'));
            return;
        }
        $mArticle = M('Article');
        if(IS_GET){
            if(isset($_GET['id'])){
                $art = $mArticle->where(['id'=>I('get.id')])->find();
                $art['content'] = htmlspecialchars_decode($art['content']);
                if(!$art) $this->error('没有这篇文章！');
                else {
                    if('delete' === I('get.action')) {
                        $mArticle->where(I('get.id'))->delete();
                        $this->success();
                        return;
                    }

                    $this->assign('art',$art);
                }
            }
                    $column = M('Column')->select();
                    $this->assign('column',$column);
            $this->display('article');
        }
        if(IS_POST){
            $result = $mArticle->add(I('post.'),[],true);
            if($result) $this->success('成功!');
            else $this->error('失败!');
        }
    }
    public function editCoach(){
        if(!session('admin')){
            $this->error('请登录！',U('login'));
            return;
        }
        $mCoach = M('Coach');
        if(IS_GET){
            $coaches = $mCoach->select();
            $this->assign('coach',$coaches);
            $this->display();
        }
        if(IS_POST){
            if('delete' === I('post.action')){
                $result = $mCoach->where(['id'=>I('post.id')])->delete();
                if($result) $this->success('删除成功！');
                else $this->error('删除失败！');
                return;
            }
            $coach = $mCoach->where(['id'=>I('get.id')])->find();
            if(!$coach) $this->error('没有此教练！');
            else{
                $result = $mCoach->add(I('post.'),[],true);
                if($result) $this->success('成功！');
                else $this->error('失败！');
            }
        }
    }
    public function editVideo(){
        if(!session('admin')){
            $this->error('请登录！',U('login'));
            return;
        }
        $mVideo = M('Video');
        if(IS_GET){
            $videos = $mVideo->select();
            $this->assign('video',$videos);
            $this->display();
        }
        if(IS_POST){
            if('delete' === I('post.action')){
                $result = $mVideo->where(['id'=>I('post.id')])->delete();
                if($result) $this->success('删除成功！');
                else $this->error('删除失败！');
                return;
            }
                $upload = new \Think\Upload();
                $upload->maxSize = 0;
                $upload->exts = ['mp4','rmvb','flv','avi'];
                $upload->rootPath = './Public/videos';
                $info = $upload->uploadOne($_FILES['video']);
                if(!$info){
                    $this->error($upload->getError());
                }else{
                    $video = I('post.');
                    $video['path'] = $info['savepath'].$info['savename'];
                
                $result = $mVideo->add($video,[],true);
                if($result) $this->success('成功！');
                else $this->error('失败！');
                }
        }
    }
}
?>

<?php
namespace Home\Controller;
use Think\Controller;
class AdminController extends Controller {
    public function index(){
        if(!session('admin')){
            $this->error('Please Login!',U('Admin/login'));
        } else {
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
        $this->success('Success!',3,U('Home/index'));
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
        if(!$column['path']) $this->error('没有对应模板！');
        switch ($column['type']){
        case C('TYPE_ARTICLE'):
            $mArticle = M('Article');
            $content = $mArticle->where(['cid'=>I('get.cid')])->find();
            if(IS_GET){
                $this->assign('content',$content);
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
                $list = $mList->where(['cid'=>$column['id']])->select();
                $this->assign('list',$list);
                $this->display('list');
            }
            if(IS_POST){
                if('delete'==I('post.method')){
                    $result = $mList->where(['id'=>I('post.id')])->delete();
                    if($result) $this->success('删除成功！');
                    else $this->error('删除失败！');
                } else {
                    $result = $mList->add(I('post.'),true);
                    if($result) $this->success('编辑成功！');
                    else $this->error('失败！');
                }
            }
            break;
        }
    }
    public function editArticle(){
        if(!session('admin')){
            $this->error('请登录！',U('login'));
            return;
        }
        $mArticle = M('Article');
        if(IS_GET){
            $art = $mArticle->where(['id'=>I('get.aid')])->find();
            if(!$art) $this->error('没有这篇文章！');
            else {
                if('delete' === I('get.action')) {
                    $mArticle->where(I('get.id'))->delete();
                    $this->success();
                    return;
                }
                $this->assign('article',$art);
            }
        }
        if(IS_POST){
            $result = $mArticle->add(I('get.'),true);
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
                $result = $mCoach->add(I('post.'),true);
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
            $video = $mVideo->where(I('post.id'))->find();
            if(!$video) $this->error('没有这个视频');
            else {
                $result = $mVideo->add(I('post.'),true);
                if($result) $this->success('成功！');
                else $this->error('失败！');
            }
        }
    }
}
?>

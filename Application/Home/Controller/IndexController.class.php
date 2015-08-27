<?php
namespace Home\Controller;
use Think\Controller;
class IndexController extends Controller {
    public function index(){
        $mCloumn = M('Column');
        $columns = $mCloumn->select();
        $this->assign('columns',$columns);
        $this->display();
    }
    public function showContent(){
        $mColumn = M('Column');
        $column = $mColumn->where(I('get.'))->find();
        if(!$column) $this->error('没有此页面！');
        else {
            switch($column['type']) {
            case C('TYPE_ARTICLE') :    //文字展示型
                $mArticle = M('Article');
                $content = $mArticle->where('cid ='.$column['cid'])->find();
                $this->assign('content',$content);
                break;
            case C('TYPE_NORMAL') :     //普通列表展示型
            if(IS_POST){
                $mList = M($column['table']);
                $list = $mList->field('id,title,time')->where('cid ='.$column['cid'])->select();
                $this->assign('list',$list);
                $this->display('load_'.$column['path']);
                exit();
                }
                break;
            case C('TYPE_SPECIAL') :       //特殊处理型
                $action = 'show'.$column['path'];
                $this->$action();
                break;
            }
            $this->assignHead($column['cid']);
            $this->display($column['path']);
        }
    }
    public function showArticle(){
        $mArticle = M('Article');
        $art = $mArticle->where(I('get.'))->find();
        if(!$art) $this->error('没有这篇文章！');
        else {
            $this->assign('content',$art);
            $this->assignHead($art['cid']);
            $this->display('article');
            }
        
    }
    private function showvideo(){
        $mVideo = M('Video');
        switch (1){
        case IS_GET:
            $vList = $mVideo->where('cid='.I('get.cid'))->field('id,title,time')->order('id desc')->limit(4)->select();
            $this->assign('vList',$vList);
            break;
        case IS_POST:
            if(I('get.id')) $vList = $mVideo->where(I('get.'))->select();
            else $vList = $mVideo->where('cid='.I('get.cid'))->select();
            $this->assign('vList',$vList);
            $this->display('load_video');
            exit();
            break;
        }
    }
    private function assignHead($cid){
        $mColumn = M('Column');
            $columns = $mColumn->select();
            $column = $mColumn->where('cid ='.$cid)->find();
            $column['fc'] = $mColumn->where('cid ='.$column['fid'])->find();
            $this->assign('columns',$columns);
            $this->assign('column',$column);
            $this->assign('title',$column['name']);
    }
}

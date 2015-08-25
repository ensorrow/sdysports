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
            case C('TYPE_ARTICLE') :
                //$this->display($column['path']);
                break;
            case C('TYPE_VIDEO') :
                $mVideo = M('Video');
                $count = $mVideo->count();
                $Page = new \Think\Page($count,20);
                $show = $Page->show();
                $list = $mVideo->order('vid desc')->limit($Page->firstRow.','.$Page->listRows)->select();
                $this->assign('list',$list);
                $this->assign('page',$show);
                break;
            }
            $columns = $mColumn->select();
            $column['fc'] = $mColumn->where('cid ='.$column['fid'])->find();
            $this->assign('columns',$columns);
            $this->assign('column',$column);
            $this->display($column['path']);
        }
    }
}

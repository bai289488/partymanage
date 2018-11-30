function paging(pages,tail){
    $(".csx-paging").html('');
    var cla = 'csx-click ';
    var claSelect = 'csx-click active'
    var pagingdata = '<li class="csx-prev" onclick="updataPage('+(pages-1)+')">';
    pagingdata += '<img src="img/csx-left.png" class="imgPageUpper" /></li>';
    if(tail > 3){
        //当前页 是小三的  前面省略...
        if(pages <=  3){
            for(var i = 0 ; i < 3 ; i++){

                if(pages == (i+1)){//选中当前页
                    pagingdata += '<li class="'+claSelect+'">'+(i+1)+'</li>';
                }else if(pages == 0){
                    page = 1;
                    pagingdata += '<li class="'+claSelect+'" >'+(i+1)+'</li>';
                }else {
                    pagingdata += '<li class="'+cla+'" onclick="updataPage('+(i+1)+')" >'+(i+1)+'</li>';
                }
            }

            //最后一页是 第四页   就不用...
            if(tail == 4){
                pagingdata += '<li class="'+cla+'" onclick="updataPage('+tail+')">'+tail+'</li>';
            }else{
                if(pages == 3 ){
                    pagingdata += '<li class="'+cla+'" onclick="updataPage(4)">4</li>';
                }
                pagingdata += '<li class="csx-point">...</li>';
                pagingdata += '<li class="'+cla+'" onclick="updataPage('+tail+')">'+tail+'</li>';
            }
        }else  if(tail - pages < 3){//判断是否是后三页
            //最后一页是 第四页   就不用...
            if(tail == 4){
                pagingdata += '<li class="'+cla+'" onclick="updataPage(1)">1</li>';
            }else{
                pagingdata += '<li class="'+cla+'" onclick="updataPage(1)">1</li>';
                pagingdata += '<li class="csx-point">...</li>';
                if(tail - pages == 2){
                    pagingdata += '<li class="'+cla+'" onclick="updataPage('+(tail-3)+')">'+(tail-3)+'</li>';
                }
            }
            if(tail - pages == 0){
                pagingdata += '<li class="'+cla+'" onclick="updataPage('+(tail-2)+')">'+(tail-2)+'</li>';
                pagingdata += '<li class="'+cla+'" onclick="updataPage('+(tail-1)+')">'+(tail-1)+'</li>';
                pagingdata += '<li class="'+claSelect+'" >'+tail+'</li>';
            }
            if(tail - pages == 1){
                pagingdata += '<li class="'+cla+'" onclick="updataPage('+(tail-2)+')">'+(tail-2)+'</li>';
                pagingdata += '<li class="'+claSelect+'">'+(tail-1)+'</li>';
                pagingdata += '<li class="'+cla+'" onclick="updataPage('+tail+')">'+tail+'</li>';
            }
            if(tail - pages == 2){
                pagingdata += '<li class="'+claSelect+'">'+(tail-2)+'</li>';
                pagingdata += '<li class="'+cla+'" onclick="updataPage('+(tail-1)+')">'+(tail-1)+'</li>';
                pagingdata += '<li class="'+cla+'" onclick="updataPage('+tail+')">'+tail+'</li>';
            }
            if(tail - pages < 0){
                console.log("总页数小于当前页数")
            }
        }else{
            pagingdata += '<li class="'+cla+'" onclick="updataPage(1)">1</li>';
            pagingdata += '<li class="csx-point">...</li>';
            pagingdata += '<li class="'+cla+'" onclick="updataPage('+(pages-1)+')">'+(pages-1)+'</li>';
            pagingdata += '<li class="'+claSelect+'">'+pages+'</li>';
            pagingdata += '<li class="'+cla+'" onclick="updataPage('+(pages+1)+')">'+(pages+1)+'</li>';
            pagingdata += '<li class="csx-point">...</li>';
            pagingdata += '<li class="'+cla+'" onclick="updataPage('+tail+')">'+tail+'</li>';
        }
    }else{
        for(var i = 0 ; i < 3 ; i++){

            if(pages == (i+1)){//选中当前页
                pagingdata += '<li class="'+claSelect+'" >'+(i+1)+'</li>';
            }else if(pages == 0){
                page = 1;
                pagingdata += '<li class="'+claSelect+'" >'+(i+1)+'</li>';
            }else {
                pagingdata += '<li class="'+cla+'" onclick="updataPage('+(i+1)+')">'+(i+1)+'</li>';
            }
            if(tail == (i+1) ){
                break;
            }
        }
    }
    if(tail - pages <= 0){
        pagingdata += '<li class="csx-next" onclick="updataPage('+pages+')" ><img src="img/csx-right.png" class="imgPageLower"/></li>';
	}else{
        pagingdata += '<li class="csx-next" onclick="updataPage('+(pages+1)+')" ><img src="img/csx-right.png" class="imgPageLower"/></li>';
	}

    $(".csx-paging").append(pagingdata);
    //显示共几页
    $(".csx-count-page").html('');
    $(".csx-count-page").html('共'+tail+'页');
    indexs = tail;
    //$(".pageVal").val('');
}
function updataPage(pages){
    if(pages <= 0){
        pages = 1;
    }
    page = pages;
    dataLoad();
}

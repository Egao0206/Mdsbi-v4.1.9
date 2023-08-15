function [] = p_format(xl,yl,tit,fsize)
    if nargin==4
        font=fsize
    else
        font = 16;
    end
    fontname = 'Times New Roman';

    if nargin<=2
        xlabel(xl,'FontSize',font,'FontWeight','bold','FontName',fontname)
        ylabel(yl,'FontSize',font,'FontWeight','bold','FontName',fontname)
    else
        xlabel(xl,'FontSize',font,'FontWeight','bold','FontName',fontname)
        ylabel(yl,'FontSize',font,'FontWeight','bold','FontName',fontname)
        title(tit,'FontSize',font,'FontWeight','bold','Interpreter','latex')
    end
end
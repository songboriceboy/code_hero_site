package com.neusoft.controller;

import com.alibaba.fastjson.JSON;
import com.neusoft.domain.Task;
import com.neusoft.service.ITaskService;
import com.neusoft.util.imgUploadBackData;
import com.neusoft.util.picEncode;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.File;
import java.io.IOException;
import java.util.Date;
import java.util.UUID;

/**
 * Created by ttc on 17-1-3.
 */
@Controller
@RequestMapping("/article")
public class ArticleController
{
//    @Autowired
//    private ArticleService articleService;
//    @Autowired
//    private TagService tagService;

    @Autowired
    private ITaskService taskService;

//    @RequestMapping("/add")
//    public void addArticles(HttpServletResponse response,Article_info article_info)
//    {
//        System.out.println("addArticles");
//
//        response.setContentType("application/json;charset=utf-8");
//        articleService.InsertArticles(article_info);
//        System.out.println(article_info.getId());
//        String strJson = JSON.toJSONString(article_info);
//        PrintWriter pw = null;
//        try
//        {
//            pw = response.getWriter();
//        } catch (IOException e)
//        {
//            e.printStackTrace();
//        }
//        pw.print(strJson);
//        return ;
//    }
//    @RequestMapping("/del")
//    public void delArticles(Article_info article_info)
//    {
//        System.out.println("delArticles");
//        articleService.DelArticles(article_info.getId());
//        return ;
//    }
//    @RequestMapping("/modify")
//    public void modifyArticles(Article_info article_info)
//    {
//        System.out.println("modifyArticles");
//        articleService.updateArticles(article_info);
//        return ;
//    }
//    @RequestMapping("/move")
//    public void moveArticles(Article_info article_info)
//    {
//        System.out.println("modifyArticles");
//        articleService.updateArticlesParentid(article_info);
//        return ;
//    }
//    @RequestMapping("/open_article")
//    public void openArticle(HttpServletResponse response, Article_info article_info) throws IOException {
//        System.out.println("openArticle");
//        Article_info_true ait =  articleService.GetTrueArticle(article_info.getId());
//        response.setContentType("application/json;charset=utf-8");
//        String strJson = JSON.toJSONString(ait);
//        response.getWriter().println(strJson);
//    }
//    @RequestMapping("/get_article")
//    public void getArticle(HttpServletResponse response, int nID) throws IOException {
//        System.out.println("openArticle");
//        Article_info_true ait =  articleService.GetTrueArticle(nID);
//        response.setContentType("application/json;charset=utf-8");
//        String strJson = JSON.toJSONString(ait);
//        response.getWriter().println(strJson);
//    }


    @RequestMapping("/save_article")
    public void SaveArticle(HttpServletRequest request, HttpServletResponse response, Task task) throws IOException {

        String strTempaa = request.getParameter("test-editormd-html-code");
        String strClassId = request.getParameter("category");
//        article_info.setArticle_content(strTempaa);
        task.setTaskdetail(strTempaa);
        task.setDifficulty("");
        task.setPubdate(new Date().toLocaleString());
        task.setTaskclass(Integer.parseInt(strClassId));
        //代表是新增
        if(task.getTaskid() == 0)
        {
            taskService.addTask(task);

//            articleService.InsertTrueArticles(article_info);
        }
        else //代表是修改文章
        {
            taskService.updateTask(task);
//            articleService.updateTrueArticles(article_info);
        }
        response.setContentType("application/json;charset=utf-8");
        String strJson = JSON.toJSONString(task);
        response.getWriter().println(strJson);
    }
    @RequestMapping("/uploadimg")
    public void uploadImg(HttpServletRequest request, HttpServletResponse response) throws IOException {
            String strTemp = request.getParameter("base");
        System.out.println(strTemp);
        strTemp = strTemp.replace("data:image/png;base64,","");
        String strPath = request.getServletContext().getRealPath("/assets/upload");
        String strUUid = UUID.randomUUID().toString();
        System.out.println(strPath);

        File file = new File(strPath);

        if(!file.exists())
        {
            file.mkdir();
        }
        String strSavePath = strPath+File.separator+strUUid+".jpg";
        picEncode.generateImage(strTemp,strSavePath);
        imgUploadBackData iubd = new imgUploadBackData();
        iubd.setPath("upload"+ File.separator+strUUid+".jpg");
        iubd.setCode(1);
        String strJson = JSON.toJSONString(iubd);
        response.getWriter().println(strJson);
    }


}

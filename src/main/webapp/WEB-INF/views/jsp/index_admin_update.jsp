<%@ page pageEncoding="UTF-8" contentType="text/html; charset=UTF-8" language="java" isELIgnored="false" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<div class="row">
    <div class="form-group">

        <!-- ID -->
        <div class="col-xs-12">
            <div class="row">
                <div class="col-xs-12">
                    <label>Поле ввода: Id</label>
                </div>
                <div class="col-xs-12">
                    <input type="text" name="update_id" class="form-control" title="id"/>
                </div>
            </div>
        </div>

        <!-- Name -->
        <div class="col-xs-12">
            <div class="row">
                <div class="col-xs-12">
                    <label>Поле ввода: Name</label>
                </div>
                <div class="col-xs-12">
                    <input type="text" name="update_name" class="form-control" title="name"/>
                </div>
            </div>
        </div>

        <!-- Type -->
        <div class="col-xs-12">
            <div class="row">
                <div class="col-xs-12">
                    <label>Поле ввода: Type</label>
                </div>
                <div class="col-xs-12">
                    <input type="text" name="update_type" class="form-control" title="type"/>
                </div>
            </div>
        </div>

        <!-- Preview -->
        <div class="col-xs-12">
            <br>
            <label>Поле ввода: Preview</label>
            <textarea name="update_preview" class="form-control" rows="6"></textarea>
        </div>


        <!-- Content -->
        <div class="col-xs-12">
            <br>
            <label>Поле ввода: Content</label>
            <textarea name="update_content" class="form-control" rows="12"></textarea>
        </div>

        <!-- Icon -->
        <div class="col-xs-12">
            <div class="row">
                <div class="col-xs-12">
                    <label>Поле ввода: Icon</label>
                </div>
                <div class="col-xs-12">
                    <input type="text" name="update_icon" class="form-control" title="icon"/>
                </div>
            </div>
        </div>

        <!-- Author -->
        <div class="col-xs-12">
            <div class="row">
                <div class="col-xs-12">
                    <label>Поле ввода: Author</label>
                </div>
                <div class="col-xs-12">
                    <input type="text" name="update_author" class="form-control" title="author"/>
                </div>
            </div>
        </div>

        <!-- Date -->
        <!-- Bootstrap 3 - DateTimePicker: http://itchief.ru/lessons/bootstrap-3/113-bootstrap-3-datetimepicker -->
        <div class="col-xs-12">
            <div class="row">
                <div class="col-xs-12">
                    <label>Поле ввода: Date</label>
                </div>
                <div class="col-xs-12">
                    <input id="datetimepicker6" placeholder="Format: 15/09/2014" type="text" name="update_date" class="form-control" title="date"/>
                </div>
            </div>
        </div>

        <div class="col-xs-2">
            <br>
            <label></label>
            <button type="submit" class="btn btn-primary btn-block">Enter</button>
        </div>
    </div>
</div>
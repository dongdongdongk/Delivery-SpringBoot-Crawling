<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!doctype html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport"
          content="width=device-width, user-scalable=no, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>Document</title>
    <link rel="stylesheet" href="/css/myPage.css">
</head>
<body>
<c:import url="../common/header.jsp"/>
<c:import url="../common/style.jsp"/>
<div class="container mt-5">
    <div class="main-body">
        <div class="row">
            <div class="col-lg-12">
                <div class="card">
                    <div class="card-body">
                        <div class="d-flex flex-column align-items-center text-center">
                            <img src="https://bootdey.com/img/Content/avatar/avatar6.png" alt="Admin" class="rounded-circle p-1 bg-primary" width="110">
                            <div class="mt-3">
                                <h4>John Doe</h4>
                                <p class="text-secondary mb-1">Full Stack Developer</p>
                                <p class="text-muted font-size-sm">Bay Area, San Francisco, CA</p>
                                <button class="btn btn-primary">Follow</button>
                                <button class="btn btn-outline-primary">Message</button>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="card">
                    <div class="card-body">
                        <div class="row mb-3">
                            <div class="col-sm-3">
                                <h6 class="mb-0">Full Name</h6>
                            </div>
                            <div class="col-sm-9 text-secondary">
                                <input type="text" class="form-control" value="John Doe">
                            </div>
                        </div>
                        <div class="row mb-3">
                            <div class="col-sm-3">
                                <h6 class="mb-0">Email</h6>
                            </div>
                            <div class="col-sm-9 text-secondary">
                                <input type="text" class="form-control" value="john@example.com">
                            </div>
                        </div>
                        <div class="row mb-3">
                            <div class="col-sm-3">
                                <h6 class="mb-0">Phone</h6>
                            </div>
                            <div class="col-sm-9 text-secondary">
                                <input type="text" class="form-control" value="(239) 816-9029">
                            </div>
                        </div>
                        <div class="row mb-3">
                            <div class="col-sm-3">
                                <h6 class="mb-0">Mobile</h6>
                            </div>
                            <div class="col-sm-9 text-secondary">
                                <input type="text" class="form-control" value="(320) 380-4539">
                            </div>
                        </div>
                        <div class="row mb-3">
                            <div class="col-sm-3">
                                <h6 class="mb-0">Address</h6>
                            </div>
                            <div class="col-sm-9 text-secondary">
                                <input type="text" class="form-control" value="Bay Area, San Francisco, CA">
                            </div>
                        </div>
                        <div class="row">
                            <div class="col-sm-3"></div>
                            <div class="col-sm-9 text-secondary">
                                <input type="button" class="btn btn-primary px-4" value="Save Changes">
                            </div>
                        </div>
                    </div>
                </div>
                <div class="row">
                    <div class="col-sm-12">
                        <div class="card">
                            <div class="card-body">
                                <section class="intro">
                                    <div class="bg-image h-100" style="background-color: #ffffff;">
                                        <div class="mask d-flex align-items-center h-100">
                                            <div class="container">
                                                <div class="row justify-content-center">
                                <h5 class="d-flex align-items-center mb-3">즐겨찾기</h5>
                                                    <div class="col-12">
                                                        <div class="card">

                                                                <div class="table-responsive table-scroll" data-mdb-perfect-scrollbar="true" style="position: relative; height: 700px">
                                                                    <table class="table table-striped mb-0">
                                                                        <thead style="background-color: #f1537b;">
                                                                        <tr>
                                                                            <th scope="col">Class name</th>
                                                                            <th scope="col">Type</th>
                                                                            <th scope="col">Hours</th>
                                                                            <th scope="col">Trainer</th>
                                                                            <th scope="col">Spots</th>
                                                                        </tr>
                                                                        </thead>
                                                                        <tbody>
                                                                        <tr>
                                                                            <td>Like a butterfly</td>
                                                                            <td>Boxing</td>
                                                                            <td>9:00 AM - 11:00 AM</td>
                                                                            <td>Aaron Chapman</td>
                                                                            <td>10</td>
                                                                        </tr>
                                                                        <tr>
                                                                            <td>Mind &amp; Body</td>
                                                                            <td>Yoga</td>
                                                                            <td>8:00 AM - 9:00 AM</td>
                                                                            <td>Adam Stewart</td>
                                                                            <td>15</td>
                                                                        </tr>
                                                                        <tr>
                                                                            <td>Crit Cardio</td>
                                                                            <td>Gym</td>
                                                                            <td>9:00 AM - 10:00 AM</td>
                                                                            <td>Aaron Chapman</td>
                                                                            <td>10</td>
                                                                        </tr>
                                                                        <tr>
                                                                            <td>Wheel Pose Full Posture</td>
                                                                            <td>Yoga</td>
                                                                            <td>7:00 AM - 8:30 AM</td>
                                                                            <td>Donna Wilson</td>
                                                                            <td>15</td>
                                                                        </tr>
                                                                        <tr>
                                                                            <td>Playful Dancer's Flow</td>
                                                                            <td>Yoga</td>
                                                                            <td>8:00 AM - 9:00 AM</td>
                                                                            <td>Donna Wilson</td>
                                                                            <td>10</td>
                                                                        </tr>
                                                                        <tr>
                                                                            <td>Zumba Dance</td>
                                                                            <td>Dance</td>
                                                                            <td>5:00 PM - 7:00 PM</td>
                                                                            <td>Donna Wilson</td>
                                                                            <td>20</td>
                                                                        </tr>
                                                                        <tr>
                                                                            <td>Cardio Blast</td>
                                                                            <td>Gym</td>
                                                                            <td>5:00 PM - 7:00 PM</td>
                                                                            <td>Randy Porter</td>
                                                                            <td>10</td>
                                                                        </tr>
                                                                        <tr>
                                                                            <td>Pilates Reformer</td>
                                                                            <td>Gym</td>
                                                                            <td>8:00 AM - 9:00 AM</td>
                                                                            <td>Randy Porter</td>
                                                                            <td>10</td>
                                                                        </tr>
                                                                        <tr>
                                                                            <td>Supple Spine and Shoulders</td>
                                                                            <td>Yoga</td>
                                                                            <td>6:30 AM - 8:00 AM</td>
                                                                            <td>Randy Porter</td>
                                                                            <td>15</td>
                                                                        </tr>
                                                                        <tr>
                                                                            <td>Yoga for Divas</td>
                                                                            <td>Yoga</td>
                                                                            <td>9:00 AM - 11:00 AM</td>
                                                                            <td>Donna Wilson</td>
                                                                            <td>20</td>
                                                                        </tr>
                                                                        <tr>
                                                                            <td>Virtual Cycle</td>
                                                                            <td>Gym</td>
                                                                            <td>8:00 AM - 9:00 AM</td>
                                                                            <td>Randy Porter</td>
                                                                            <td>20</td>
                                                                        </tr>
                                                                        <tr>
                                                                            <td>Like a butterfly</td>
                                                                            <td>Boxing</td>
                                                                            <td>9:00 AM - 11:00 AM</td>
                                                                            <td>Aaron Chapman</td>
                                                                            <td>10</td>
                                                                        </tr>
                                                                        <tr>
                                                                            <td>Mind &amp; Body</td>
                                                                            <td>Yoga</td>
                                                                            <td>8:00 AM - 9:00 AM</td>
                                                                            <td>Adam Stewart</td>
                                                                            <td>15</td>
                                                                        </tr>
                                                                        <tr>
                                                                            <td>Crit Cardio</td>
                                                                            <td>Gym</td>
                                                                            <td>9:00 AM - 10:00 AM</td>
                                                                            <td>Aaron Chapman</td>
                                                                            <td>10</td>
                                                                        </tr>
                                                                        <tr>
                                                                            <td>Wheel Pose Full Posture</td>
                                                                            <td>Yoga</td>
                                                                            <td>7:00 AM - 8:30 AM</td>
                                                                            <td>Donna Wilson</td>
                                                                            <td>15</td>
                                                                        </tr>
                                                                        <tr>
                                                                            <td>Playful Dancer's Flow</td>
                                                                            <td>Yoga</td>
                                                                            <td>8:00 AM - 9:00 AM</td>
                                                                            <td>Donna Wilson</td>
                                                                            <td>10</td>
                                                                        </tr>
                                                                        <tr>
                                                                            <td>Zumba Dance</td>
                                                                            <td>Dance</td>
                                                                            <td>5:00 PM - 7:00 PM</td>
                                                                            <td>Donna Wilson</td>
                                                                            <td>20</td>
                                                                        </tr>
                                                                        <tr>
                                                                            <td>Cardio Blast</td>
                                                                            <td>Gym</td>
                                                                            <td>5:00 PM - 7:00 PM</td>
                                                                            <td>Randy Porter</td>
                                                                            <td>10</td>
                                                                        </tr>
                                                                        <tr>
                                                                            <td>Pilates Reformer</td>
                                                                            <td>Gym</td>
                                                                            <td>8:00 AM - 9:00 AM</td>
                                                                            <td>Randy Porter</td>
                                                                            <td>10</td>
                                                                        </tr>
                                                                        <tr>
                                                                            <td>Supple Spine and Shoulders</td>
                                                                            <td>Yoga</td>
                                                                            <td>6:30 AM - 8:00 AM</td>
                                                                            <td>Randy Porter</td>
                                                                            <td>15</td>
                                                                        </tr>
                                                                        <tr>
                                                                            <td>Yoga for Divas</td>
                                                                            <td>Yoga</td>
                                                                            <td>9:00 AM - 11:00 AM</td>
                                                                            <td>Donna Wilson</td>
                                                                            <td>20</td>
                                                                        </tr>
                                                                        <tr>
                                                                            <td>Virtual Cycle</td>
                                                                            <td>Gym</td>
                                                                            <td>8:00 AM - 9:00 AM</td>
                                                                            <td>Randy Porter</td>
                                                                            <td>20</td>
                                                                        </tr>
                                                                        </tbody>
                                                                    </table>
                                                                </div>

                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </section>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
</body>
</html>
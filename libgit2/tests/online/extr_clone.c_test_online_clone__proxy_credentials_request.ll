; ModuleID = '/home/carl/AnghaBench/libgit2/tests/online/extr_clone.c_test_online_clone__proxy_credentials_request.c'
source_filename = "/home/carl/AnghaBench/libgit2/tests/online/extr_clone.c_test_online_clone__proxy_credentials_request.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { i32 }
%struct.TYPE_12__ = type { %struct.TYPE_10__ }
%struct.TYPE_10__ = type { %struct.TYPE_9__ }
%struct.TYPE_9__ = type { i32, i32, i32, i32 }

@GIT_BUF_INIT = common dso_local global %struct.TYPE_11__ zeroinitializer, align 4
@_remote_proxy_host = common dso_local global i32 0, align 4
@_remote_proxy_user = common dso_local global i32 0, align 4
@_remote_proxy_pass = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [9 x i8] c"%s://%s/\00", align 1
@_remote_proxy_scheme = common dso_local global i8* null, align 8
@.str.1 = private unnamed_addr constant [5 x i8] c"http\00", align 1
@GIT_PROXY_SPECIFIED = common dso_local global i32 0, align 4
@g_options = common dso_local global %struct.TYPE_12__ zeroinitializer, align 4
@proxy_cred_cb = common dso_local global i32 0, align 4
@proxy_cert_cb = common dso_local global i32 0, align 4
@called_proxy_creds = common dso_local global i64 0, align 8
@g_repo = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [44 x i8] c"http://github.com/libgit2/TestGitRepository\00", align 1
@.str.3 = private unnamed_addr constant [6 x i8] c"./foo\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @test_online_clone__proxy_credentials_request() #0 {
  %1 = alloca %struct.TYPE_11__, align 4
  %2 = bitcast %struct.TYPE_11__* %1 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %2, i8* align 4 bitcast (%struct.TYPE_11__* @GIT_BUF_INIT to i8*), i64 4, i1 false)
  %3 = load i32, i32* @_remote_proxy_host, align 4
  %4 = icmp ne i32 %3, 0
  br i1 %4, label %5, label %11

5:                                                ; preds = %0
  %6 = load i32, i32* @_remote_proxy_user, align 4
  %7 = icmp ne i32 %6, 0
  br i1 %7, label %8, label %11

8:                                                ; preds = %5
  %9 = load i32, i32* @_remote_proxy_pass, align 4
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %13, label %11

11:                                               ; preds = %8, %5, %0
  %12 = call i32 (...) @cl_skip()
  br label %13

13:                                               ; preds = %11, %8
  %14 = load i8*, i8** @_remote_proxy_scheme, align 8
  %15 = icmp ne i8* %14, null
  br i1 %15, label %16, label %18

16:                                               ; preds = %13
  %17 = load i8*, i8** @_remote_proxy_scheme, align 8
  br label %19

18:                                               ; preds = %13
  br label %19

19:                                               ; preds = %18, %16
  %20 = phi i8* [ %17, %16 ], [ getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0), %18 ]
  %21 = load i32, i32* @_remote_proxy_host, align 4
  %22 = call i32 @git_buf_printf(%struct.TYPE_11__* %1, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0), i8* %20, i32 %21)
  %23 = call i32 @cl_git_pass(i32 %22)
  %24 = load i32, i32* @GIT_PROXY_SPECIFIED, align 4
  store i32 %24, i32* getelementptr inbounds (%struct.TYPE_12__, %struct.TYPE_12__* @g_options, i32 0, i32 0, i32 0, i32 3), align 4
  %25 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %1, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  store i32 %26, i32* getelementptr inbounds (%struct.TYPE_12__, %struct.TYPE_12__* @g_options, i32 0, i32 0, i32 0, i32 2), align 4
  %27 = load i32, i32* @proxy_cred_cb, align 4
  store i32 %27, i32* getelementptr inbounds (%struct.TYPE_12__, %struct.TYPE_12__* @g_options, i32 0, i32 0, i32 0, i32 1), align 4
  %28 = load i32, i32* @proxy_cert_cb, align 4
  store i32 %28, i32* getelementptr inbounds (%struct.TYPE_12__, %struct.TYPE_12__* @g_options, i32 0, i32 0, i32 0, i32 0), align 4
  store i64 0, i64* @called_proxy_creds, align 8
  %29 = call i32 @git_clone(i32* @g_repo, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i64 0, i64 0), %struct.TYPE_12__* @g_options)
  %30 = call i32 @cl_git_pass(i32 %29)
  %31 = load i64, i64* @called_proxy_creds, align 8
  %32 = call i32 @cl_assert(i64 %31)
  %33 = call i32 @git_buf_dispose(%struct.TYPE_11__* %1)
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @cl_skip(...) #2

declare dso_local i32 @cl_git_pass(i32) #2

declare dso_local i32 @git_buf_printf(%struct.TYPE_11__*, i8*, i8*, i32) #2

declare dso_local i32 @git_clone(i32*, i8*, i8*, %struct.TYPE_12__*) #2

declare dso_local i32 @cl_assert(i64) #2

declare dso_local i32 @git_buf_dispose(%struct.TYPE_11__*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

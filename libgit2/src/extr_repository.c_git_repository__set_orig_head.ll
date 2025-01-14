; ModuleID = '/home/carl/AnghaBench/libgit2/src/extr_repository.c_git_repository__set_orig_head.c'
source_filename = "/home/carl/AnghaBench/libgit2/src/extr_repository.c_git_repository__set_orig_head.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i32 }
%struct.TYPE_7__ = type { i32 }

@GIT_FILEBUF_INIT = common dso_local global i32 0, align 4
@GIT_BUF_INIT = common dso_local global %struct.TYPE_8__ zeroinitializer, align 4
@GIT_OID_HEXSZ = common dso_local global i32 0, align 4
@GIT_ORIG_HEAD_FILE = common dso_local global i32 0, align 4
@GIT_FILEBUF_CREATE_LEADING_DIRS = common dso_local global i32 0, align 4
@GIT_MERGE_FILE_MODE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [6 x i8] c"%.*s\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @git_repository__set_orig_head(%struct.TYPE_7__* %0, i32* %1) #0 {
  %3 = alloca %struct.TYPE_7__*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_8__, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  store %struct.TYPE_7__* %0, %struct.TYPE_7__** %3, align 8
  store i32* %1, i32** %4, align 8
  %10 = load i32, i32* @GIT_FILEBUF_INIT, align 4
  store i32 %10, i32* %5, align 4
  %11 = bitcast %struct.TYPE_8__* %6 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %11, i8* align 4 bitcast (%struct.TYPE_8__* @GIT_BUF_INIT to i8*), i64 4, i1 false)
  %12 = load i32, i32* @GIT_OID_HEXSZ, align 4
  %13 = zext i32 %12 to i64
  %14 = call i8* @llvm.stacksave()
  store i8* %14, i8** %7, align 8
  %15 = alloca i8, i64 %13, align 16
  store i64 %13, i64* %8, align 8
  store i32 0, i32* %9, align 4
  %16 = load i32*, i32** %4, align 8
  %17 = call i32 @git_oid_fmt(i8* %15, i32* %16)
  %18 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %19 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = load i32, i32* @GIT_ORIG_HEAD_FILE, align 4
  %22 = call i32 @git_buf_joinpath(%struct.TYPE_8__* %6, i32 %20, i32 %21)
  store i32 %22, i32* %9, align 4
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %24, label %37

24:                                               ; preds = %2
  %25 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %6, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = load i32, i32* @GIT_FILEBUF_CREATE_LEADING_DIRS, align 4
  %28 = load i32, i32* @GIT_MERGE_FILE_MODE, align 4
  %29 = call i32 @git_filebuf_open(i32* %5, i32 %26, i32 %27, i32 %28)
  store i32 %29, i32* %9, align 4
  %30 = icmp eq i32 %29, 0
  br i1 %30, label %31, label %37

31:                                               ; preds = %24
  %32 = load i32, i32* @GIT_OID_HEXSZ, align 4
  %33 = call i32 @git_filebuf_printf(i32* %5, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i32 %32, i8* %15)
  store i32 %33, i32* %9, align 4
  %34 = icmp eq i32 %33, 0
  br i1 %34, label %35, label %37

35:                                               ; preds = %31
  %36 = call i32 @git_filebuf_commit(i32* %5)
  store i32 %36, i32* %9, align 4
  br label %37

37:                                               ; preds = %35, %31, %24, %2
  %38 = load i32, i32* %9, align 4
  %39 = icmp slt i32 %38, 0
  br i1 %39, label %40, label %42

40:                                               ; preds = %37
  %41 = call i32 @git_filebuf_cleanup(i32* %5)
  br label %42

42:                                               ; preds = %40, %37
  %43 = call i32 @git_buf_dispose(%struct.TYPE_8__* %6)
  %44 = load i32, i32* %9, align 4
  %45 = load i8*, i8** %7, align 8
  call void @llvm.stackrestore(i8* %45)
  ret i32 %44
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #2

declare dso_local i32 @git_oid_fmt(i8*, i32*) #3

declare dso_local i32 @git_buf_joinpath(%struct.TYPE_8__*, i32, i32) #3

declare dso_local i32 @git_filebuf_open(i32*, i32, i32, i32) #3

declare dso_local i32 @git_filebuf_printf(i32*, i8*, i32, i8*) #3

declare dso_local i32 @git_filebuf_commit(i32*) #3

declare dso_local i32 @git_filebuf_cleanup(i32*) #3

declare dso_local i32 @git_buf_dispose(%struct.TYPE_8__*) #3

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { nounwind }
attributes #3 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

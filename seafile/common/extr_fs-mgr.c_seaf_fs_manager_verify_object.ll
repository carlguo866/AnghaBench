; ModuleID = '/home/carl/AnghaBench/seafile/common/extr_fs-mgr.c_seaf_fs_manager_verify_object.c'
source_filename = "/home/carl/AnghaBench/seafile/common/extr_fs-mgr.c_seaf_fs_manager_verify_object.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32 }

@TRUE = common dso_local global i32 0, align 4
@EMPTY_SHA1 = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [39 x i8] c"[fs mgr] Failed to read object %s:%s.\0A\00", align 1
@FALSE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @seaf_fs_manager_verify_object(%struct.TYPE_3__* %0, i8* %1, i32 %2, i8* %3, i32 %4, i32* %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.TYPE_3__*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i8*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32*, align 8
  %14 = alloca i8*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %8, align 8
  store i8* %1, i8** %9, align 8
  store i32 %2, i32* %10, align 4
  store i8* %3, i8** %11, align 8
  store i32 %4, i32* %12, align 4
  store i32* %5, i32** %13, align 8
  %17 = load i32, i32* @TRUE, align 4
  store i32 %17, i32* %16, align 4
  %18 = load i8*, i8** %11, align 8
  %19 = load i32, i32* @EMPTY_SHA1, align 4
  %20 = call i64 @memcmp(i8* %18, i32 %19, i32 40)
  %21 = icmp eq i64 %20, 0
  br i1 %21, label %22, label %24

22:                                               ; preds = %6
  %23 = load i32, i32* @TRUE, align 4
  store i32 %23, i32* %7, align 4
  br label %58

24:                                               ; preds = %6
  %25 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %26 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = load i8*, i8** %9, align 8
  %29 = load i32, i32* %10, align 4
  %30 = load i8*, i8** %11, align 8
  %31 = call i64 @seaf_obj_store_read_obj(i32 %27, i8* %28, i32 %29, i8* %30, i8** %14, i32* %15)
  %32 = icmp slt i64 %31, 0
  br i1 %32, label %33, label %40

33:                                               ; preds = %24
  %34 = load i8*, i8** %9, align 8
  %35 = load i8*, i8** %11, align 8
  %36 = call i32 @seaf_warning(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0), i8* %34, i8* %35)
  %37 = load i32, i32* @TRUE, align 4
  %38 = load i32*, i32** %13, align 8
  store i32 %37, i32* %38, align 4
  %39 = load i32, i32* @FALSE, align 4
  store i32 %39, i32* %7, align 4
  br label %58

40:                                               ; preds = %24
  %41 = load i32, i32* %10, align 4
  %42 = icmp eq i32 %41, 0
  br i1 %42, label %43, label %49

43:                                               ; preds = %40
  %44 = load i8*, i8** %11, align 8
  %45 = load i8*, i8** %14, align 8
  %46 = load i32, i32* %15, align 4
  %47 = load i32, i32* %12, align 4
  %48 = call i32 @verify_fs_object_v0(i8* %44, i8* %45, i32 %46, i32 %47)
  store i32 %48, i32* %16, align 4
  br label %54

49:                                               ; preds = %40
  %50 = load i8*, i8** %11, align 8
  %51 = load i8*, i8** %14, align 8
  %52 = load i32, i32* %15, align 4
  %53 = call i32 @verify_fs_object_json(i8* %50, i8* %51, i32 %52)
  store i32 %53, i32* %16, align 4
  br label %54

54:                                               ; preds = %49, %43
  %55 = load i8*, i8** %14, align 8
  %56 = call i32 @g_free(i8* %55)
  %57 = load i32, i32* %16, align 4
  store i32 %57, i32* %7, align 4
  br label %58

58:                                               ; preds = %54, %33, %22
  %59 = load i32, i32* %7, align 4
  ret i32 %59
}

declare dso_local i64 @memcmp(i8*, i32, i32) #1

declare dso_local i64 @seaf_obj_store_read_obj(i32, i8*, i32, i8*, i8**, i32*) #1

declare dso_local i32 @seaf_warning(i8*, i8*, i8*) #1

declare dso_local i32 @verify_fs_object_v0(i8*, i8*, i32, i32) #1

declare dso_local i32 @verify_fs_object_json(i8*, i8*, i32) #1

declare dso_local i32 @g_free(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

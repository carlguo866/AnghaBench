; ModuleID = '/home/carl/AnghaBench/seafile/common/extr_obj-backend-fs.c_obj_backend_fs_write.c'
source_filename = "/home/carl/AnghaBench/seafile/common/extr_obj-backend-fs.c_obj_backend_fs_write.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32 }

@SEAF_PATH_MAX = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [52 x i8] c"[obj backend] Failed to create path for obj %s:%s.\0A\00", align 1
@.str.1 = private unnamed_addr constant [42 x i8] c"[obj backend] Failed to write obj %s:%s.\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_3__*, i8*, i32, i8*, i8*, i32, i32)* @obj_backend_fs_write to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @obj_backend_fs_write(%struct.TYPE_3__* %0, i8* %1, i32 %2, i8* %3, i8* %4, i32 %5, i32 %6) #0 {
  %8 = alloca i32, align 4
  %9 = alloca %struct.TYPE_3__*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i8*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i8*, align 8
  %17 = alloca i64, align 8
  %18 = alloca i32, align 4
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %9, align 8
  store i8* %1, i8** %10, align 8
  store i32 %2, i32* %11, align 4
  store i8* %3, i8** %12, align 8
  store i8* %4, i8** %13, align 8
  store i32 %5, i32* %14, align 4
  store i32 %6, i32* %15, align 4
  %19 = load i32, i32* @SEAF_PATH_MAX, align 4
  %20 = zext i32 %19 to i64
  %21 = call i8* @llvm.stacksave()
  store i8* %21, i8** %16, align 8
  %22 = alloca i8, i64 %20, align 16
  store i64 %20, i64* %17, align 8
  %23 = load %struct.TYPE_3__*, %struct.TYPE_3__** %9, align 8
  %24 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = load i8*, i8** %12, align 8
  %27 = load i8*, i8** %10, align 8
  %28 = load i32, i32* %11, align 4
  %29 = call i32 @id_to_path(i32 %25, i8* %26, i8* %22, i8* %27, i32 %28)
  %30 = call i64 @create_parent_path(i8* %22)
  %31 = icmp slt i64 %30, 0
  br i1 %31, label %32, label %36

32:                                               ; preds = %7
  %33 = load i8*, i8** %10, align 8
  %34 = load i8*, i8** %12, align 8
  %35 = call i32 @seaf_warning(i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str, i64 0, i64 0), i8* %33, i8* %34)
  store i32 -1, i32* %8, align 4
  store i32 1, i32* %18, align 4
  br label %47

36:                                               ; preds = %7
  %37 = load i8*, i8** %13, align 8
  %38 = load i32, i32* %14, align 4
  %39 = load i32, i32* %15, align 4
  %40 = call i64 @save_obj_contents(i8* %22, i8* %37, i32 %38, i32 %39)
  %41 = icmp slt i64 %40, 0
  br i1 %41, label %42, label %46

42:                                               ; preds = %36
  %43 = load i8*, i8** %10, align 8
  %44 = load i8*, i8** %12, align 8
  %45 = call i32 @seaf_warning(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.1, i64 0, i64 0), i8* %43, i8* %44)
  store i32 -1, i32* %8, align 4
  store i32 1, i32* %18, align 4
  br label %47

46:                                               ; preds = %36
  store i32 0, i32* %8, align 4
  store i32 1, i32* %18, align 4
  br label %47

47:                                               ; preds = %46, %42, %32
  %48 = load i8*, i8** %16, align 8
  call void @llvm.stackrestore(i8* %48)
  %49 = load i32, i32* %8, align 4
  ret i32 %49
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @id_to_path(i32, i8*, i8*, i8*, i32) #2

declare dso_local i64 @create_parent_path(i8*) #2

declare dso_local i32 @seaf_warning(i8*, i8*, i8*) #2

declare dso_local i64 @save_obj_contents(i8*, i8*, i32, i32) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

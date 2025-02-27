; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/ofed/libibumad/extr_umad.c_umad_get_issm_path.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/ofed/libibumad/extr_umad.c_umad_get_issm_path.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [14 x i8] c"ca %s port %d\00", align 1
@ENODEV = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [10 x i8] c"%s/issm%u\00", align 1
@UMAD_DEV_DIR = common dso_local global i8* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @umad_get_issm_path(i8* %0, i32 %1, i8* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store i8* %0, i8** %6, align 8
  store i32 %1, i32* %7, align 4
  store i8* %2, i8** %8, align 8
  store i32 %3, i32* %9, align 4
  %11 = load i8*, i8** %6, align 8
  %12 = load i32, i32* %7, align 4
  %13 = call i32 @TRACE(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i8* %11, i32 %12)
  %14 = load i8*, i8** %6, align 8
  %15 = call i8* @resolve_ca_name(i8* %14, i32* %7)
  store i8* %15, i8** %6, align 8
  %16 = icmp ne i8* %15, null
  br i1 %16, label %20, label %17

17:                                               ; preds = %4
  %18 = load i32, i32* @ENODEV, align 4
  %19 = sub nsw i32 0, %18
  store i32 %19, i32* %5, align 4
  br label %34

20:                                               ; preds = %4
  %21 = load i8*, i8** %6, align 8
  %22 = load i32, i32* %7, align 4
  %23 = call i32 @dev_to_umad_id(i8* %21, i32 %22)
  store i32 %23, i32* %10, align 4
  %24 = icmp slt i32 %23, 0
  br i1 %24, label %25, label %28

25:                                               ; preds = %20
  %26 = load i32, i32* @EINVAL, align 4
  %27 = sub nsw i32 0, %26
  store i32 %27, i32* %5, align 4
  br label %34

28:                                               ; preds = %20
  %29 = load i8*, i8** %8, align 8
  %30 = load i32, i32* %9, align 4
  %31 = load i8*, i8** @UMAD_DEV_DIR, align 8
  %32 = load i32, i32* %10, align 4
  %33 = call i32 @snprintf(i8* %29, i32 %30, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i64 0, i64 0), i8* %31, i32 %32)
  store i32 0, i32* %5, align 4
  br label %34

34:                                               ; preds = %28, %25, %17
  %35 = load i32, i32* %5, align 4
  ret i32 %35
}

declare dso_local i32 @TRACE(i8*, i8*, i32) #1

declare dso_local i8* @resolve_ca_name(i8*, i32*) #1

declare dso_local i32 @dev_to_umad_id(i8*, i32) #1

declare dso_local i32 @snprintf(i8*, i32, i8*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

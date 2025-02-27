; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/xz/src/xz/extr_list.c_print_adv_helper.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/xz/src/xz/extr_list.c_print_adv_helper.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@CHECKS_STR_SIZE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [26 x i8] c"  Streams:            %s\0A\00", align 1
@.str.1 = private unnamed_addr constant [26 x i8] c"  Blocks:             %s\0A\00", align 1
@.str.2 = private unnamed_addr constant [26 x i8] c"  Compressed size:    %s\0A\00", align 1
@NICESTR_B = common dso_local global i32 0, align 4
@NICESTR_TIB = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [26 x i8] c"  Uncompressed size:  %s\0A\00", align 1
@.str.4 = private unnamed_addr constant [26 x i8] c"  Ratio:              %s\0A\00", align 1
@.str.5 = private unnamed_addr constant [26 x i8] c"  Check:              %s\0A\00", align 1
@.str.6 = private unnamed_addr constant [26 x i8] c"  Stream padding:     %s\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, i32, i32, i32, i32, i32)* @print_adv_helper to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @print_adv_helper(i32 %0, i32 %1, i32 %2, i32 %3, i32 %4, i32 %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i8*, align 8
  %14 = alloca i64, align 8
  store i32 %0, i32* %7, align 4
  store i32 %1, i32* %8, align 4
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  store i32 %5, i32* %12, align 4
  %15 = load i32, i32* @CHECKS_STR_SIZE, align 4
  %16 = zext i32 %15 to i64
  %17 = call i8* @llvm.stacksave()
  store i8* %17, i8** %13, align 8
  %18 = alloca i8, i64 %16, align 16
  store i64 %16, i64* %14, align 8
  %19 = load i32, i32* %11, align 4
  %20 = call i32 @get_check_names(i8* %18, i32 %19, i32 1)
  %21 = call i8* @_(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0))
  %22 = load i32, i32* %7, align 4
  %23 = call i8* @uint64_to_str(i32 %22, i32 0)
  %24 = call i32 @printf(i8* %21, i8* %23)
  %25 = call i8* @_(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.1, i64 0, i64 0))
  %26 = load i32, i32* %8, align 4
  %27 = call i8* @uint64_to_str(i32 %26, i32 0)
  %28 = call i32 @printf(i8* %25, i8* %27)
  %29 = call i8* @_(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.2, i64 0, i64 0))
  %30 = load i32, i32* %9, align 4
  %31 = load i32, i32* @NICESTR_B, align 4
  %32 = load i32, i32* @NICESTR_TIB, align 4
  %33 = call i8* @uint64_to_nicestr(i32 %30, i32 %31, i32 %32, i32 1, i32 0)
  %34 = call i32 @printf(i8* %29, i8* %33)
  %35 = call i8* @_(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.3, i64 0, i64 0))
  %36 = load i32, i32* %10, align 4
  %37 = load i32, i32* @NICESTR_B, align 4
  %38 = load i32, i32* @NICESTR_TIB, align 4
  %39 = call i8* @uint64_to_nicestr(i32 %36, i32 %37, i32 %38, i32 1, i32 0)
  %40 = call i32 @printf(i8* %35, i8* %39)
  %41 = call i8* @_(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.4, i64 0, i64 0))
  %42 = load i32, i32* %9, align 4
  %43 = load i32, i32* %10, align 4
  %44 = call i8* @get_ratio(i32 %42, i32 %43)
  %45 = call i32 @printf(i8* %41, i8* %44)
  %46 = call i8* @_(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.5, i64 0, i64 0))
  %47 = call i32 @printf(i8* %46, i8* %18)
  %48 = call i8* @_(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.6, i64 0, i64 0))
  %49 = load i32, i32* %12, align 4
  %50 = load i32, i32* @NICESTR_B, align 4
  %51 = load i32, i32* @NICESTR_TIB, align 4
  %52 = call i8* @uint64_to_nicestr(i32 %49, i32 %50, i32 %51, i32 1, i32 0)
  %53 = call i32 @printf(i8* %48, i8* %52)
  %54 = load i8*, i8** %13, align 8
  call void @llvm.stackrestore(i8* %54)
  ret void
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @get_check_names(i8*, i32, i32) #2

declare dso_local i32 @printf(i8*, i8*) #2

declare dso_local i8* @_(i8*) #2

declare dso_local i8* @uint64_to_str(i32, i32) #2

declare dso_local i8* @uint64_to_nicestr(i32, i32, i32, i32, i32) #2

declare dso_local i8* @get_ratio(i32, i32) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

; ModuleID = '/home/carl/AnghaBench/radare2/libr/bin/extr_blang.c_is_cxx_symbol.c'
source_filename = "/home/carl/AnghaBench/radare2/libr/bin/extr_blang.c_is_cxx_symbol.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [3 x i8] c"_Z\00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c"__Z\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*)* @is_cxx_symbol to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @is_cxx_symbol(i8* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i8*, align 8
  store i8* %0, i8** %3, align 8
  %4 = load i8*, i8** %3, align 8
  %5 = call i32 @r_return_val_if_fail(i8* %4, i32 0)
  %6 = load i8*, i8** %3, align 8
  %7 = call i32 @strncmp(i8* %6, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i32 2)
  %8 = icmp ne i32 %7, 0
  br i1 %8, label %10, label %9

9:                                                ; preds = %1
  store i32 1, i32* %2, align 4
  br label %16

10:                                               ; preds = %1
  %11 = load i8*, i8** %3, align 8
  %12 = call i32 @strncmp(i8* %11, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0), i32 3)
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %15, label %14

14:                                               ; preds = %10
  store i32 1, i32* %2, align 4
  br label %16

15:                                               ; preds = %10
  store i32 0, i32* %2, align 4
  br label %16

16:                                               ; preds = %15, %14, %9
  %17 = load i32, i32* %2, align 4
  ret i32 %17
}

declare dso_local i32 @r_return_val_if_fail(i8*, i32) #1

declare dso_local i32 @strncmp(i8*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/elftoolchain/readelf/extr_readelf.c_aeabi_fp_denormal.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/elftoolchain/readelf/extr_readelf.c_aeabi_fp_denormal.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@aeabi_fp_denormal.s_fp_d = internal global [32 x i8] zeroinitializer, align 16
@.str = private unnamed_addr constant [7 x i8] c"Unused\00", align 1
@.str.1 = private unnamed_addr constant [7 x i8] c"Needed\00", align 1
@.str.2 = private unnamed_addr constant [10 x i8] c"Sign Only\00", align 1
@.str.3 = private unnamed_addr constant [14 x i8] c"Unknown (%ju)\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (i32)* @aeabi_fp_denormal to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @aeabi_fp_denormal(i32 %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  %4 = load i32, i32* %3, align 4
  switch i32 %4, label %8 [
    i32 0, label %5
    i32 1, label %6
    i32 2, label %7
  ]

5:                                                ; preds = %1
  store i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), i8** %2, align 8
  br label %11

6:                                                ; preds = %1
  store i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0), i8** %2, align 8
  br label %11

7:                                                ; preds = %1
  store i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i64 0, i64 0), i8** %2, align 8
  br label %11

8:                                                ; preds = %1
  %9 = load i32, i32* %3, align 4
  %10 = call i32 @snprintf(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @aeabi_fp_denormal.s_fp_d, i64 0, i64 0), i32 32, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.3, i64 0, i64 0), i32 %9)
  store i8* getelementptr inbounds ([32 x i8], [32 x i8]* @aeabi_fp_denormal.s_fp_d, i64 0, i64 0), i8** %2, align 8
  br label %11

11:                                               ; preds = %8, %7, %6, %5
  %12 = load i8*, i8** %2, align 8
  ret i8* %12
}

declare dso_local i32 @snprintf(i8*, i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

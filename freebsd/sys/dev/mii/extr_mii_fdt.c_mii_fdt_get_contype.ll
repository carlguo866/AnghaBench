; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/mii/extr_mii_fdt.c_mii_fdt_get_contype.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/mii/extr_mii_fdt.c_mii_fdt_get_contype.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [9 x i8] c"phy-mode\00", align 1
@.str.1 = private unnamed_addr constant [20 x i8] c"phy-connection-type\00", align 1
@MII_CONTYPE_UNKNOWN = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mii_fdt_get_contype(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca [32 x i8], align 16
  store i32 %0, i32* %3, align 4
  %5 = load i32, i32* %3, align 4
  %6 = getelementptr inbounds [32 x i8], [32 x i8]* %4, i64 0, i64 0
  %7 = call i64 @OF_getprop(i32 %5, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0), i8* %6, i32 32)
  %8 = icmp sle i64 %7, 0
  br i1 %8, label %9, label %16

9:                                                ; preds = %1
  %10 = load i32, i32* %3, align 4
  %11 = getelementptr inbounds [32 x i8], [32 x i8]* %4, i64 0, i64 0
  %12 = call i64 @OF_getprop(i32 %10, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i64 0, i64 0), i8* %11, i32 32)
  %13 = icmp sle i64 %12, 0
  br i1 %13, label %14, label %16

14:                                               ; preds = %9
  %15 = load i32, i32* @MII_CONTYPE_UNKNOWN, align 4
  store i32 %15, i32* %2, align 4
  br label %19

16:                                               ; preds = %9, %1
  %17 = getelementptr inbounds [32 x i8], [32 x i8]* %4, i64 0, i64 0
  %18 = call i32 @mii_fdt_contype_from_name(i8* %17)
  store i32 %18, i32* %2, align 4
  br label %19

19:                                               ; preds = %16, %14
  %20 = load i32, i32* %2, align 4
  ret i32 %20
}

declare dso_local i64 @OF_getprop(i32, i8*, i8*, i32) #1

declare dso_local i32 @mii_fdt_contype_from_name(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

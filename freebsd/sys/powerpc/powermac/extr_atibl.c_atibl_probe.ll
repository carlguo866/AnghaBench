; ModuleID = '/home/carl/AnghaBench/freebsd/sys/powerpc/powermac/extr_atibl.c_atibl_probe.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/powerpc/powermac/extr_atibl.c_atibl_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [17 x i8] c"mac-io/backlight\00", align 1
@ENXIO = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [18 x i8] c"backlight-control\00", align 1
@.str.2 = private unnamed_addr constant [4 x i8] c"ati\00", align 1
@.str.3 = private unnamed_addr constant [5 x i8] c"mnca\00", align 1
@.str.4 = private unnamed_addr constant [37 x i8] c"PowerBook backlight for ATI graphics\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @atibl_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @atibl_probe(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca [8 x i8], align 1
  %5 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  %6 = call i32 @OF_finddevice(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0))
  store i32 %6, i32* %5, align 4
  %7 = load i32, i32* %5, align 4
  %8 = icmp eq i32 %7, -1
  br i1 %8, label %9, label %11

9:                                                ; preds = %1
  %10 = load i32, i32* @ENXIO, align 4
  store i32 %10, i32* %2, align 4
  br label %36

11:                                               ; preds = %1
  %12 = load i32, i32* %5, align 4
  %13 = bitcast [8 x i8]* %4 to i8**
  %14 = call i64 @OF_getprop(i32 %12, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.1, i64 0, i64 0), i8** %13, i32 8)
  %15 = icmp slt i64 %14, 0
  br i1 %15, label %16, label %18

16:                                               ; preds = %11
  %17 = load i32, i32* @ENXIO, align 4
  store i32 %17, i32* %2, align 4
  br label %36

18:                                               ; preds = %11
  %19 = getelementptr inbounds [8 x i8], [8 x i8]* %4, i64 0, i64 0
  %20 = call i64 @strcmp(i8* %19, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0))
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %33

22:                                               ; preds = %18
  %23 = getelementptr inbounds [8 x i8], [8 x i8]* %4, i64 0, i64 0
  %24 = call i64 @strcmp(i8* %23, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i64 0, i64 0))
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %31, label %26

26:                                               ; preds = %22
  %27 = load i32, i32* %3, align 4
  %28 = call i32 @device_get_parent(i32 %27)
  %29 = call i32 @pci_get_vendor(i32 %28)
  %30 = icmp ne i32 %29, 4098
  br i1 %30, label %31, label %33

31:                                               ; preds = %26, %22
  %32 = load i32, i32* @ENXIO, align 4
  store i32 %32, i32* %2, align 4
  br label %36

33:                                               ; preds = %26, %18
  %34 = load i32, i32* %3, align 4
  %35 = call i32 @device_set_desc(i32 %34, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.4, i64 0, i64 0))
  store i32 0, i32* %2, align 4
  br label %36

36:                                               ; preds = %33, %31, %16, %9
  %37 = load i32, i32* %2, align 4
  ret i32 %37
}

declare dso_local i32 @OF_finddevice(i8*) #1

declare dso_local i64 @OF_getprop(i32, i8*, i8**, i32) #1

declare dso_local i64 @strcmp(i8*, i8*) #1

declare dso_local i32 @pci_get_vendor(i32) #1

declare dso_local i32 @device_get_parent(i32) #1

declare dso_local i32 @device_set_desc(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

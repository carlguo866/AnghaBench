; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/broadcom/brcm80211/brcmsmac/extr_main.c_brcms_b_copyto_objmem.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/broadcom/brcm80211/brcmsmac/extr_main.c_brcms_b_copyto_objmem.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.brcms_hardware = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @brcms_b_copyto_objmem(%struct.brcms_hardware* %0, i32 %1, i8* %2, i32 %3, i32 %4) #0 {
  %6 = alloca %struct.brcms_hardware*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32*, align 8
  %13 = alloca i32, align 4
  store %struct.brcms_hardware* %0, %struct.brcms_hardware** %6, align 8
  store i32 %1, i32* %7, align 4
  store i8* %2, i8** %8, align 8
  store i32 %3, i32* %9, align 4
  store i32 %4, i32* %10, align 4
  %14 = load i8*, i8** %8, align 8
  %15 = bitcast i8* %14 to i32*
  store i32* %15, i32** %12, align 8
  %16 = load i32, i32* %9, align 4
  %17 = icmp sle i32 %16, 0
  br i1 %17, label %26, label %18

18:                                               ; preds = %5
  %19 = load i32, i32* %7, align 4
  %20 = and i32 %19, 1
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %26, label %22

22:                                               ; preds = %18
  %23 = load i32, i32* %9, align 4
  %24 = and i32 %23, 1
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %27

26:                                               ; preds = %22, %18, %5
  br label %56

27:                                               ; preds = %22
  store i32 0, i32* %13, align 4
  br label %28

28:                                               ; preds = %53, %27
  %29 = load i32, i32* %13, align 4
  %30 = load i32, i32* %9, align 4
  %31 = icmp slt i32 %29, %30
  br i1 %31, label %32, label %56

32:                                               ; preds = %28
  %33 = load i32*, i32** %12, align 8
  %34 = load i32, i32* %13, align 4
  %35 = sext i32 %34 to i64
  %36 = getelementptr inbounds i32, i32* %33, i64 %35
  %37 = load i32, i32* %36, align 4
  %38 = load i32*, i32** %12, align 8
  %39 = load i32, i32* %13, align 4
  %40 = add nsw i32 %39, 1
  %41 = sext i32 %40 to i64
  %42 = getelementptr inbounds i32, i32* %38, i64 %41
  %43 = load i32, i32* %42, align 4
  %44 = shl i32 %43, 8
  %45 = or i32 %37, %44
  store i32 %45, i32* %11, align 4
  %46 = load %struct.brcms_hardware*, %struct.brcms_hardware** %6, align 8
  %47 = load i32, i32* %7, align 4
  %48 = load i32, i32* %13, align 4
  %49 = add nsw i32 %47, %48
  %50 = load i32, i32* %11, align 4
  %51 = load i32, i32* %10, align 4
  %52 = call i32 @brcms_b_write_objmem(%struct.brcms_hardware* %46, i32 %49, i32 %50, i32 %51)
  br label %53

53:                                               ; preds = %32
  %54 = load i32, i32* %13, align 4
  %55 = add nsw i32 %54, 2
  store i32 %55, i32* %13, align 4
  br label %28

56:                                               ; preds = %26, %28
  ret void
}

declare dso_local i32 @brcms_b_write_objmem(%struct.brcms_hardware*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

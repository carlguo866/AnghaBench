; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/vga/extr_vgaarb.c_vga_pci_str_to_vars.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/vga/extr_vgaarb.c_vga_pci_str_to_vars.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [16 x i8] c"PCI:%x:%x:%x.%x\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i32, i32*, i32*, i32*)* @vga_pci_str_to_vars to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vga_pci_str_to_vars(i8* %0, i32 %1, i32* %2, i32* %3, i32* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store i8* %0, i8** %7, align 8
  store i32 %1, i32* %8, align 4
  store i32* %2, i32** %9, align 8
  store i32* %3, i32** %10, align 8
  store i32* %4, i32** %11, align 8
  %15 = load i8*, i8** %7, align 8
  %16 = load i32*, i32** %9, align 8
  %17 = load i32*, i32** %10, align 8
  %18 = call i32 @sscanf(i8* %15, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0), i32* %16, i32* %17, i32* %13, i32* %14)
  store i32 %18, i32* %12, align 4
  %19 = load i32, i32* %12, align 4
  %20 = icmp ne i32 %19, 4
  br i1 %20, label %21, label %22

21:                                               ; preds = %5
  store i32 0, i32* %6, align 4
  br label %27

22:                                               ; preds = %5
  %23 = load i32, i32* %13, align 4
  %24 = load i32, i32* %14, align 4
  %25 = call i32 @PCI_DEVFN(i32 %23, i32 %24)
  %26 = load i32*, i32** %11, align 8
  store i32 %25, i32* %26, align 4
  store i32 1, i32* %6, align 4
  br label %27

27:                                               ; preds = %22, %21
  %28 = load i32, i32* %6, align 4
  ret i32 %28
}

declare dso_local i32 @sscanf(i8*, i8*, i32*, i32*, i32*, i32*) #1

declare dso_local i32 @PCI_DEVFN(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

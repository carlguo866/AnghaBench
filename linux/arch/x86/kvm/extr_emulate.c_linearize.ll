; ModuleID = '/home/carl/AnghaBench/linux/arch/x86/kvm/extr_emulate.c_linearize.c'
source_filename = "/home/carl/AnghaBench/linux/arch/x86/kvm/extr_emulate.c_linearize.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.x86_emulate_ctxt = type { i32 }
%struct.segmented_address = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.x86_emulate_ctxt*, i32, i32, i32, i32*)* @linearize to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @linearize(%struct.x86_emulate_ctxt* %0, i32 %1, i32 %2, i32 %3, i32* %4) #0 {
  %6 = alloca %struct.segmented_address, align 4
  %7 = alloca %struct.x86_emulate_ctxt*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32*, align 8
  %11 = alloca i32, align 4
  %12 = getelementptr inbounds %struct.segmented_address, %struct.segmented_address* %6, i32 0, i32 0
  store i32 %1, i32* %12, align 4
  store %struct.x86_emulate_ctxt* %0, %struct.x86_emulate_ctxt** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  store i32* %4, i32** %10, align 8
  %13 = load %struct.x86_emulate_ctxt*, %struct.x86_emulate_ctxt** %7, align 8
  %14 = load i32, i32* %8, align 4
  %15 = load i32, i32* %9, align 4
  %16 = load %struct.x86_emulate_ctxt*, %struct.x86_emulate_ctxt** %7, align 8
  %17 = getelementptr inbounds %struct.x86_emulate_ctxt, %struct.x86_emulate_ctxt* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = load i32*, i32** %10, align 8
  %20 = getelementptr inbounds %struct.segmented_address, %struct.segmented_address* %6, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = call i32 @__linearize(%struct.x86_emulate_ctxt* %13, i32 %21, i32* %11, i32 %14, i32 %15, i32 0, i32 %18, i32* %19)
  ret i32 %22
}

declare dso_local i32 @__linearize(%struct.x86_emulate_ctxt*, i32, i32*, i32, i32, i32, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

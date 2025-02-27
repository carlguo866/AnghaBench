; ModuleID = '/home/carl/AnghaBench/linux/arch/powerpc/kvm/extr_mpic.c_openpic_gcr_write.c'
source_filename = "/home/carl/AnghaBench/linux/arch/powerpc/kvm/extr_mpic.c_openpic_gcr_write.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.openpic = type { i32, i32 }

@GCR_RESET = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.openpic*, i32)* @openpic_gcr_write to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @openpic_gcr_write(%struct.openpic* %0, i32 %1) #0 {
  %3 = alloca %struct.openpic*, align 8
  %4 = alloca i32, align 4
  store %struct.openpic* %0, %struct.openpic** %3, align 8
  store i32 %1, i32* %4, align 4
  %5 = load i32, i32* %4, align 4
  %6 = load i32, i32* @GCR_RESET, align 4
  %7 = and i32 %5, %6
  %8 = icmp ne i32 %7, 0
  br i1 %8, label %9, label %12

9:                                                ; preds = %2
  %10 = load %struct.openpic*, %struct.openpic** %3, align 8
  %11 = call i32 @openpic_reset(%struct.openpic* %10)
  br label %30

12:                                               ; preds = %2
  %13 = load %struct.openpic*, %struct.openpic** %3, align 8
  %14 = getelementptr inbounds %struct.openpic, %struct.openpic* %13, i32 0, i32 1
  %15 = load i32, i32* %14, align 4
  %16 = xor i32 %15, -1
  %17 = load %struct.openpic*, %struct.openpic** %3, align 8
  %18 = getelementptr inbounds %struct.openpic, %struct.openpic* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = and i32 %19, %16
  store i32 %20, i32* %18, align 4
  %21 = load i32, i32* %4, align 4
  %22 = load %struct.openpic*, %struct.openpic** %3, align 8
  %23 = getelementptr inbounds %struct.openpic, %struct.openpic* %22, i32 0, i32 1
  %24 = load i32, i32* %23, align 4
  %25 = and i32 %21, %24
  %26 = load %struct.openpic*, %struct.openpic** %3, align 8
  %27 = getelementptr inbounds %struct.openpic, %struct.openpic* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = or i32 %28, %25
  store i32 %29, i32* %27, align 4
  br label %30

30:                                               ; preds = %12, %9
  ret void
}

declare dso_local i32 @openpic_reset(%struct.openpic*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/pci/cx18/extr_cx18-io.h_cx18_write_enc.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/pci/cx18/extr_cx18-io.h_cx18_write_enc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cx18 = type { i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.cx18*, i64, i64)* @cx18_write_enc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @cx18_write_enc(%struct.cx18* %0, i64 %1, i64 %2) #0 {
  %4 = alloca %struct.cx18*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  store %struct.cx18* %0, %struct.cx18** %4, align 8
  store i64 %1, i64* %5, align 8
  store i64 %2, i64* %6, align 8
  %7 = load %struct.cx18*, %struct.cx18** %4, align 8
  %8 = load i64, i64* %5, align 8
  %9 = load %struct.cx18*, %struct.cx18** %4, align 8
  %10 = getelementptr inbounds %struct.cx18, %struct.cx18* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  %12 = load i64, i64* %6, align 8
  %13 = add nsw i64 %11, %12
  %14 = call i32 @cx18_writel(%struct.cx18* %7, i64 %8, i64 %13)
  ret void
}

declare dso_local i32 @cx18_writel(%struct.cx18*, i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/ieee1394/extr_pcilynx.h_put_pcl.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/ieee1394/extr_pcilynx.h_put_pcl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ti_lynx = type { i64 }
%struct.ti_pcl = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ti_lynx*, i32, %struct.ti_pcl*)* @put_pcl to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @put_pcl(%struct.ti_lynx* %0, i32 %1, %struct.ti_pcl* %2) #0 {
  %4 = alloca %struct.ti_lynx*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.ti_pcl*, align 8
  store %struct.ti_lynx* %0, %struct.ti_lynx** %4, align 8
  store i32 %1, i32* %5, align 4
  store %struct.ti_pcl* %2, %struct.ti_pcl** %6, align 8
  %7 = load %struct.ti_lynx*, %struct.ti_lynx** %4, align 8
  %8 = getelementptr inbounds %struct.ti_lynx, %struct.ti_lynx* %7, i32 0, i32 0
  %9 = load i64, i64* %8, align 8
  %10 = load i32, i32* %5, align 4
  %11 = sext i32 %10 to i64
  %12 = mul i64 %11, 4
  %13 = add i64 %9, %12
  %14 = inttoptr i64 %13 to i32*
  %15 = load %struct.ti_pcl*, %struct.ti_pcl** %6, align 8
  %16 = bitcast %struct.ti_pcl* %15 to i32*
  %17 = call i32 @memcpy_le32(i32* %14, i32* %16, i32 4)
  ret void
}

declare dso_local i32 @memcpy_le32(i32*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

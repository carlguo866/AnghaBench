; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/mscc/extr_ocelot_ace.c_vcap_row_cmd.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/mscc/extr_ocelot_ace.c_vcap_row_cmd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i64 }
%struct.ocelot = type { i32 }

@vcap_is2 = common dso_local global %struct.TYPE_2__ zeroinitializer, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ocelot*, i64, i32, i32)* @vcap_row_cmd to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @vcap_row_cmd(%struct.ocelot* %0, i64 %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.ocelot*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.ocelot* %0, %struct.ocelot** %5, align 8
  store i64 %1, i64* %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %9 = load %struct.ocelot*, %struct.ocelot** %5, align 8
  %10 = load i64, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @vcap_is2, i32 0, i32 0), align 8
  %11 = load i64, i64* %6, align 8
  %12 = sub nsw i64 %10, %11
  %13 = sub nsw i64 %12, 1
  %14 = load i32, i32* %7, align 4
  %15 = load i32, i32* %8, align 4
  %16 = call i32 @vcap_cmd(%struct.ocelot* %9, i64 %13, i32 %14, i32 %15)
  ret void
}

declare dso_local i32 @vcap_cmd(%struct.ocelot*, i64, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

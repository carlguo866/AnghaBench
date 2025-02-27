; ModuleID = '/home/carl/AnghaBench/linux/arch/powerpc/platforms/powermac/extr_low_i2c.c_kw_i2c_open.c'
source_filename = "/home/carl/AnghaBench/linux/arch/powerpc/platforms/powermac/extr_low_i2c.c_kw_i2c_open.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pmac_i2c_bus = type { %struct.pmac_i2c_host_kw* }
%struct.pmac_i2c_host_kw = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pmac_i2c_bus*)* @kw_i2c_open to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @kw_i2c_open(%struct.pmac_i2c_bus* %0) #0 {
  %2 = alloca %struct.pmac_i2c_bus*, align 8
  %3 = alloca %struct.pmac_i2c_host_kw*, align 8
  store %struct.pmac_i2c_bus* %0, %struct.pmac_i2c_bus** %2, align 8
  %4 = load %struct.pmac_i2c_bus*, %struct.pmac_i2c_bus** %2, align 8
  %5 = getelementptr inbounds %struct.pmac_i2c_bus, %struct.pmac_i2c_bus* %4, i32 0, i32 0
  %6 = load %struct.pmac_i2c_host_kw*, %struct.pmac_i2c_host_kw** %5, align 8
  store %struct.pmac_i2c_host_kw* %6, %struct.pmac_i2c_host_kw** %3, align 8
  %7 = load %struct.pmac_i2c_host_kw*, %struct.pmac_i2c_host_kw** %3, align 8
  %8 = getelementptr inbounds %struct.pmac_i2c_host_kw, %struct.pmac_i2c_host_kw* %7, i32 0, i32 0
  %9 = call i32 @mutex_lock(i32* %8)
  ret i32 0
}

declare dso_local i32 @mutex_lock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

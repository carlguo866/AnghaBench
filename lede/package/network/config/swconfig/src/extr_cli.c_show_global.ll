; ModuleID = '/home/carl/AnghaBench/lede/package/network/config/swconfig/src/extr_cli.c_show_global.c'
source_filename = "/home/carl/AnghaBench/lede/package/network/config/swconfig/src/extr_cli.c_show_global.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.switch_dev = type { i32 }
%struct.switch_val = type { i32 }

@.str = private unnamed_addr constant [20 x i8] c"Global attributes:\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.switch_dev*)* @show_global to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @show_global(%struct.switch_dev* %0) #0 {
  %2 = alloca %struct.switch_dev*, align 8
  %3 = alloca %struct.switch_val, align 4
  store %struct.switch_dev* %0, %struct.switch_dev** %2, align 8
  %4 = call i32 @printf(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0))
  %5 = load %struct.switch_dev*, %struct.switch_dev** %2, align 8
  %6 = load %struct.switch_dev*, %struct.switch_dev** %2, align 8
  %7 = getelementptr inbounds %struct.switch_dev, %struct.switch_dev* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 4
  %9 = call i32 @show_attrs(%struct.switch_dev* %5, i32 %8, %struct.switch_val* %3)
  ret void
}

declare dso_local i32 @printf(i8*) #1

declare dso_local i32 @show_attrs(%struct.switch_dev*, i32, %struct.switch_val*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

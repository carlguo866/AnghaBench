; ModuleID = '/home/carl/AnghaBench/linux/net/atm/extr_raw.c_atm_init_aal5.c'
source_filename = "/home/carl/AnghaBench/linux/net/atm/extr_raw.c_atm_init_aal5.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.atm_vcc = type { %struct.TYPE_4__*, i32, i32*, i32, i32 }
%struct.TYPE_4__ = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 }

@atm_push_raw = common dso_local global i32 0, align 4
@atm_pop_raw = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @atm_init_aal5(%struct.atm_vcc* %0) #0 {
  %2 = alloca %struct.atm_vcc*, align 8
  store %struct.atm_vcc* %0, %struct.atm_vcc** %2, align 8
  %3 = load i32, i32* @atm_push_raw, align 4
  %4 = load %struct.atm_vcc*, %struct.atm_vcc** %2, align 8
  %5 = getelementptr inbounds %struct.atm_vcc, %struct.atm_vcc* %4, i32 0, i32 4
  store i32 %3, i32* %5, align 4
  %6 = load i32, i32* @atm_pop_raw, align 4
  %7 = load %struct.atm_vcc*, %struct.atm_vcc** %2, align 8
  %8 = getelementptr inbounds %struct.atm_vcc, %struct.atm_vcc* %7, i32 0, i32 3
  store i32 %6, i32* %8, align 8
  %9 = load %struct.atm_vcc*, %struct.atm_vcc** %2, align 8
  %10 = getelementptr inbounds %struct.atm_vcc, %struct.atm_vcc* %9, i32 0, i32 2
  store i32* null, i32** %10, align 8
  %11 = load %struct.atm_vcc*, %struct.atm_vcc** %2, align 8
  %12 = getelementptr inbounds %struct.atm_vcc, %struct.atm_vcc* %11, i32 0, i32 0
  %13 = load %struct.TYPE_4__*, %struct.TYPE_4__** %12, align 8
  %14 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %13, i32 0, i32 0
  %15 = load %struct.TYPE_3__*, %struct.TYPE_3__** %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = load %struct.atm_vcc*, %struct.atm_vcc** %2, align 8
  %19 = getelementptr inbounds %struct.atm_vcc, %struct.atm_vcc* %18, i32 0, i32 1
  store i32 %17, i32* %19, align 8
  ret i32 0
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

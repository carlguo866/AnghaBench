; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/dsa/b53/extr_b53_common.c_b53_fdb_del.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/dsa/b53/extr_b53_common.c_b53_fdb_del.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dsa_switch = type { %struct.b53_device* }
%struct.b53_device = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @b53_fdb_del(%struct.dsa_switch* %0, i32 %1, i8* %2, i32 %3) #0 {
  %5 = alloca %struct.dsa_switch*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.b53_device*, align 8
  store %struct.dsa_switch* %0, %struct.dsa_switch** %5, align 8
  store i32 %1, i32* %6, align 4
  store i8* %2, i8** %7, align 8
  store i32 %3, i32* %8, align 4
  %10 = load %struct.dsa_switch*, %struct.dsa_switch** %5, align 8
  %11 = getelementptr inbounds %struct.dsa_switch, %struct.dsa_switch* %10, i32 0, i32 0
  %12 = load %struct.b53_device*, %struct.b53_device** %11, align 8
  store %struct.b53_device* %12, %struct.b53_device** %9, align 8
  %13 = load %struct.b53_device*, %struct.b53_device** %9, align 8
  %14 = load i32, i32* %6, align 4
  %15 = load i8*, i8** %7, align 8
  %16 = load i32, i32* %8, align 4
  %17 = call i32 @b53_arl_op(%struct.b53_device* %13, i32 0, i32 %14, i8* %15, i32 %16, i32 0)
  ret i32 %17
}

declare dso_local i32 @b53_arl_op(%struct.b53_device*, i32, i32, i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

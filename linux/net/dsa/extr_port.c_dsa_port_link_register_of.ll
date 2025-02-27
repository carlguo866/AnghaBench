; ModuleID = '/home/carl/AnghaBench/linux/net/dsa/extr_port.c_dsa_port_link_register_of.c'
source_filename = "/home/carl/AnghaBench/linux/net/dsa/extr_port.c_dsa_port_link_register_of.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dsa_port = type { i32, %struct.dsa_switch* }
%struct.dsa_switch = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@.str = private unnamed_addr constant [59 x i8] c"Using legacy PHYLIB callbacks. Please migrate to PHYLINK!\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @dsa_port_link_register_of(%struct.dsa_port* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.dsa_port*, align 8
  %4 = alloca %struct.dsa_switch*, align 8
  store %struct.dsa_port* %0, %struct.dsa_port** %3, align 8
  %5 = load %struct.dsa_port*, %struct.dsa_port** %3, align 8
  %6 = getelementptr inbounds %struct.dsa_port, %struct.dsa_port* %5, i32 0, i32 1
  %7 = load %struct.dsa_switch*, %struct.dsa_switch** %6, align 8
  store %struct.dsa_switch* %7, %struct.dsa_switch** %4, align 8
  %8 = load %struct.dsa_switch*, %struct.dsa_switch** %4, align 8
  %9 = getelementptr inbounds %struct.dsa_switch, %struct.dsa_switch* %8, i32 0, i32 1
  %10 = load %struct.TYPE_2__*, %struct.TYPE_2__** %9, align 8
  %11 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %17, label %14

14:                                               ; preds = %1
  %15 = load %struct.dsa_port*, %struct.dsa_port** %3, align 8
  %16 = call i32 @dsa_port_phylink_register(%struct.dsa_port* %15)
  store i32 %16, i32* %2, align 4
  br label %33

17:                                               ; preds = %1
  %18 = load %struct.dsa_switch*, %struct.dsa_switch** %4, align 8
  %19 = getelementptr inbounds %struct.dsa_switch, %struct.dsa_switch* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  %21 = call i32 @dev_warn(i32 %20, i8* getelementptr inbounds ([59 x i8], [59 x i8]* @.str, i64 0, i64 0))
  %22 = load %struct.dsa_port*, %struct.dsa_port** %3, align 8
  %23 = getelementptr inbounds %struct.dsa_port, %struct.dsa_port* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  %25 = call i64 @of_phy_is_fixed_link(i32 %24)
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %30

27:                                               ; preds = %17
  %28 = load %struct.dsa_port*, %struct.dsa_port** %3, align 8
  %29 = call i32 @dsa_port_fixed_link_register_of(%struct.dsa_port* %28)
  store i32 %29, i32* %2, align 4
  br label %33

30:                                               ; preds = %17
  %31 = load %struct.dsa_port*, %struct.dsa_port** %3, align 8
  %32 = call i32 @dsa_port_setup_phy_of(%struct.dsa_port* %31, i32 1)
  store i32 %32, i32* %2, align 4
  br label %33

33:                                               ; preds = %30, %27, %14
  %34 = load i32, i32* %2, align 4
  ret i32 %34
}

declare dso_local i32 @dsa_port_phylink_register(%struct.dsa_port*) #1

declare dso_local i32 @dev_warn(i32, i8*) #1

declare dso_local i64 @of_phy_is_fixed_link(i32) #1

declare dso_local i32 @dsa_port_fixed_link_register_of(%struct.dsa_port*) #1

declare dso_local i32 @dsa_port_setup_phy_of(%struct.dsa_port*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

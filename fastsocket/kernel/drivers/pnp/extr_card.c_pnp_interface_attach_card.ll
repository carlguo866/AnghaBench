; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/pnp/extr_card.c_pnp_interface_attach_card.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/pnp/extr_card.c_pnp_interface_attach_card.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pnp_card = type { i32 }

@dev_attr_name = common dso_local global i32 0, align 4
@dev_attr_card_id = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pnp_card*)* @pnp_interface_attach_card to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pnp_interface_attach_card(%struct.pnp_card* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.pnp_card*, align 8
  %4 = alloca i32, align 4
  store %struct.pnp_card* %0, %struct.pnp_card** %3, align 8
  %5 = load %struct.pnp_card*, %struct.pnp_card** %3, align 8
  %6 = getelementptr inbounds %struct.pnp_card, %struct.pnp_card* %5, i32 0, i32 0
  %7 = call i32 @device_create_file(i32* %6, i32* @dev_attr_name)
  store i32 %7, i32* %4, align 4
  %8 = load i32, i32* %4, align 4
  %9 = icmp ne i32 %8, 0
  br i1 %9, label %10, label %12

10:                                               ; preds = %1
  %11 = load i32, i32* %4, align 4
  store i32 %11, i32* %2, align 4
  br label %25

12:                                               ; preds = %1
  %13 = load %struct.pnp_card*, %struct.pnp_card** %3, align 8
  %14 = getelementptr inbounds %struct.pnp_card, %struct.pnp_card* %13, i32 0, i32 0
  %15 = call i32 @device_create_file(i32* %14, i32* @dev_attr_card_id)
  store i32 %15, i32* %4, align 4
  %16 = load i32, i32* %4, align 4
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %19

18:                                               ; preds = %12
  br label %20

19:                                               ; preds = %12
  store i32 0, i32* %2, align 4
  br label %25

20:                                               ; preds = %18
  %21 = load %struct.pnp_card*, %struct.pnp_card** %3, align 8
  %22 = getelementptr inbounds %struct.pnp_card, %struct.pnp_card* %21, i32 0, i32 0
  %23 = call i32 @device_remove_file(i32* %22, i32* @dev_attr_name)
  %24 = load i32, i32* %4, align 4
  store i32 %24, i32* %2, align 4
  br label %25

25:                                               ; preds = %20, %19, %10
  %26 = load i32, i32* %2, align 4
  ret i32 %26
}

declare dso_local i32 @device_create_file(i32*, i32*) #1

declare dso_local i32 @device_remove_file(i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/mscc/extr_ocelot_ace.c_ocelot_ace_rule_stats_update.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/mscc/extr_ocelot_ace.c_ocelot_ace_rule_stats_update.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ocelot_ace_rule = type { %struct.TYPE_4__*, %struct.TYPE_3__ }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_3__ = type { i64 }

@acl_block = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ocelot_ace_rule_stats_update(%struct.ocelot_ace_rule* %0) #0 {
  %2 = alloca %struct.ocelot_ace_rule*, align 8
  %3 = alloca %struct.ocelot_ace_rule*, align 8
  %4 = alloca i32, align 4
  store %struct.ocelot_ace_rule* %0, %struct.ocelot_ace_rule** %2, align 8
  %5 = load i32, i32* @acl_block, align 4
  %6 = load %struct.ocelot_ace_rule*, %struct.ocelot_ace_rule** %2, align 8
  %7 = call i32 @ocelot_ace_rule_get_index_id(i32 %5, %struct.ocelot_ace_rule* %6)
  store i32 %7, i32* %4, align 4
  %8 = load %struct.ocelot_ace_rule*, %struct.ocelot_ace_rule** %2, align 8
  %9 = load i32, i32* %4, align 4
  %10 = call i32 @is2_entry_get(%struct.ocelot_ace_rule* %8, i32 %9)
  %11 = load i32, i32* @acl_block, align 4
  %12 = load i32, i32* %4, align 4
  %13 = call %struct.ocelot_ace_rule* @ocelot_ace_rule_get_rule_index(i32 %11, i32 %12)
  store %struct.ocelot_ace_rule* %13, %struct.ocelot_ace_rule** %3, align 8
  %14 = load %struct.ocelot_ace_rule*, %struct.ocelot_ace_rule** %3, align 8
  %15 = getelementptr inbounds %struct.ocelot_ace_rule, %struct.ocelot_ace_rule* %14, i32 0, i32 1
  %16 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %15, i32 0, i32 0
  store i64 0, i64* %16, align 8
  %17 = load %struct.ocelot_ace_rule*, %struct.ocelot_ace_rule** %2, align 8
  %18 = getelementptr inbounds %struct.ocelot_ace_rule, %struct.ocelot_ace_rule* %17, i32 0, i32 0
  %19 = load %struct.TYPE_4__*, %struct.TYPE_4__** %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = load i32, i32* %4, align 4
  %23 = load %struct.ocelot_ace_rule*, %struct.ocelot_ace_rule** %3, align 8
  %24 = call i32 @is2_entry_set(i32 %21, i32 %22, %struct.ocelot_ace_rule* %23)
  ret i32 0
}

declare dso_local i32 @ocelot_ace_rule_get_index_id(i32, %struct.ocelot_ace_rule*) #1

declare dso_local i32 @is2_entry_get(%struct.ocelot_ace_rule*, i32) #1

declare dso_local %struct.ocelot_ace_rule* @ocelot_ace_rule_get_rule_index(i32, i32) #1

declare dso_local i32 @is2_entry_set(i32, i32, %struct.ocelot_ace_rule*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

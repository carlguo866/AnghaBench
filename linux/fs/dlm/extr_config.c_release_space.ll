; ModuleID = '/home/carl/AnghaBench/linux/fs/dlm/extr_config.c_release_space.c'
source_filename = "/home/carl/AnghaBench/linux/fs/dlm/extr_config.c_release_space.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.config_item = type { i32 }
%struct.dlm_space = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.config_item*)* @release_space to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @release_space(%struct.config_item* %0) #0 {
  %2 = alloca %struct.config_item*, align 8
  %3 = alloca %struct.dlm_space*, align 8
  store %struct.config_item* %0, %struct.config_item** %2, align 8
  %4 = load %struct.config_item*, %struct.config_item** %2, align 8
  %5 = call %struct.dlm_space* @config_item_to_space(%struct.config_item* %4)
  store %struct.dlm_space* %5, %struct.dlm_space** %3, align 8
  %6 = load %struct.dlm_space*, %struct.dlm_space** %3, align 8
  %7 = call i32 @kfree(%struct.dlm_space* %6)
  ret void
}

declare dso_local %struct.dlm_space* @config_item_to_space(%struct.config_item*) #1

declare dso_local i32 @kfree(%struct.dlm_space*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

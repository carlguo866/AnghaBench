; ModuleID = '/home/carl/AnghaBench/linux/drivers/i2c/extr_i2c-core-base.c_i2c_verify_adapter.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/i2c/extr_i2c-core-base.c_i2c_verify_adapter.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i2c_adapter = type { i32 }
%struct.device = type { i32* }

@i2c_adapter_type = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.i2c_adapter* @i2c_verify_adapter(%struct.device* %0) #0 {
  %2 = alloca %struct.device*, align 8
  store %struct.device* %0, %struct.device** %2, align 8
  %3 = load %struct.device*, %struct.device** %2, align 8
  %4 = getelementptr inbounds %struct.device, %struct.device* %3, i32 0, i32 0
  %5 = load i32*, i32** %4, align 8
  %6 = icmp eq i32* %5, @i2c_adapter_type
  br i1 %6, label %7, label %10

7:                                                ; preds = %1
  %8 = load %struct.device*, %struct.device** %2, align 8
  %9 = call %struct.i2c_adapter* @to_i2c_adapter(%struct.device* %8)
  br label %11

10:                                               ; preds = %1
  br label %11

11:                                               ; preds = %10, %7
  %12 = phi %struct.i2c_adapter* [ %9, %7 ], [ null, %10 ]
  ret %struct.i2c_adapter* %12
}

declare dso_local %struct.i2c_adapter* @to_i2c_adapter(%struct.device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

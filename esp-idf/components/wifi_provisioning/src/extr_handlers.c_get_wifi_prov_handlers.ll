; ModuleID = '/home/carl/AnghaBench/esp-idf/components/wifi_provisioning/src/extr_handlers.c_get_wifi_prov_handlers.c'
source_filename = "/home/carl/AnghaBench/esp-idf/components/wifi_provisioning/src/extr_handlers.c_get_wifi_prov_handlers.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32*, i32, i32, i32 }

@ESP_ERR_INVALID_ARG = common dso_local global i32 0, align 4
@get_status_handler = common dso_local global i32 0, align 4
@set_config_handler = common dso_local global i32 0, align 4
@apply_config_handler = common dso_local global i32 0, align 4
@ESP_OK = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @get_wifi_prov_handlers(%struct.TYPE_3__* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_3__*, align 8
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %3, align 8
  %4 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %5 = icmp ne %struct.TYPE_3__* %4, null
  br i1 %5, label %8, label %6

6:                                                ; preds = %1
  %7 = load i32, i32* @ESP_ERR_INVALID_ARG, align 4
  store i32 %7, i32* %2, align 4
  br label %21

8:                                                ; preds = %1
  %9 = load i32, i32* @get_status_handler, align 4
  %10 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %11 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %10, i32 0, i32 3
  store i32 %9, i32* %11, align 8
  %12 = load i32, i32* @set_config_handler, align 4
  %13 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %14 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %13, i32 0, i32 2
  store i32 %12, i32* %14, align 4
  %15 = load i32, i32* @apply_config_handler, align 4
  %16 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %17 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %16, i32 0, i32 1
  store i32 %15, i32* %17, align 8
  %18 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %19 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %18, i32 0, i32 0
  store i32* null, i32** %19, align 8
  %20 = load i32, i32* @ESP_OK, align 4
  store i32 %20, i32* %2, align 4
  br label %21

21:                                               ; preds = %8, %6
  %22 = load i32, i32* %2, align 4
  ret i32 %22
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

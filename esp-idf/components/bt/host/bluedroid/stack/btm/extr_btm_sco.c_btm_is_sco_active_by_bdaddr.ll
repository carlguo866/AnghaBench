; ModuleID = '/home/carl/AnghaBench/esp-idf/components/bt/host/bluedroid/stack/btm/extr_btm_sco.c_btm_is_sco_active_by_bdaddr.c'
source_filename = "/home/carl/AnghaBench/esp-idf/components/bt/host/bluedroid/stack/btm/extr_btm_sco.c_btm_is_sco_active_by_bdaddr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { %struct.TYPE_9__* }
%struct.TYPE_9__ = type { i64, %struct.TYPE_8__ }
%struct.TYPE_8__ = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i32 }

@FALSE = common dso_local global i32 0, align 4
@BD_ADDR_LEN = common dso_local global i32 0, align 4
@BTM_MAX_SCO_LINKS = common dso_local global i64 0, align 8
@SCO_ST_CONNECTED = common dso_local global i64 0, align 8
@TRUE = common dso_local global i32 0, align 4
@btm_cb = common dso_local global %struct.TYPE_10__ zeroinitializer, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @btm_is_sco_active_by_bdaddr(i32 %0) #0 {
  %2 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %3 = load i32, i32* @FALSE, align 4
  ret i32 %3
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

; ModuleID = '/home/carl/AnghaBench/reactos/sdk/lib/drivers/ip/network/extr_router.c_DestroyFIBE.c'
source_filename = "/home/carl/AnghaBench/reactos/sdk/lib/drivers/ip/network/extr_router.c_DestroyFIBE.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32 }

@DEBUG_ROUTER = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [22 x i8] c"Called. FIBE (0x%X).\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @DestroyFIBE(%struct.TYPE_4__* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_4__*, align 8
  store %struct.TYPE_4__* %0, %struct.TYPE_4__** %3, align 8
  %4 = load i32, i32* @DEBUG_ROUTER, align 4
  %5 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %6 = bitcast %struct.TYPE_4__* %5 to i8*
  %7 = call i32 @TI_DbgPrint(i32 %4, i8* %6)
  %8 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %9 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %8, i32 0, i32 0
  %10 = call i32 @RemoveEntryList(i32* %9)
  %11 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %12 = call i32 @FreeFIB(%struct.TYPE_4__* %11)
  %13 = load i32, i32* %2, align 4
  ret i32 %13
}

declare dso_local i32 @TI_DbgPrint(i32, i8*) #1

declare dso_local i32 @RemoveEntryList(i32*) #1

declare dso_local i32 @FreeFIB(%struct.TYPE_4__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

; ModuleID = '/home/carl/AnghaBench/freebsd/sys/netgraph/atm/extr_ngatmbase.c_uni_msg_destroy.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/netgraph/atm/extr_ngatmbase.c_uni_msg_destroy.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.uni_msg = type { i32 }
%struct.ngatm_msg = type { i32 }

@M_UNIMSG = common dso_local global i32 0, align 4
@ngatm_unilist_mtx = common dso_local global i32 0, align 4
@ngatm_freeuni = common dso_local global i32 0, align 4
@link = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @uni_msg_destroy(%struct.uni_msg* %0) #0 {
  %2 = alloca %struct.uni_msg*, align 8
  %3 = alloca %struct.ngatm_msg*, align 8
  store %struct.uni_msg* %0, %struct.uni_msg** %2, align 8
  %4 = load %struct.uni_msg*, %struct.uni_msg** %2, align 8
  %5 = bitcast %struct.uni_msg* %4 to %struct.ngatm_msg*
  store %struct.ngatm_msg* %5, %struct.ngatm_msg** %3, align 8
  %6 = load %struct.uni_msg*, %struct.uni_msg** %2, align 8
  %7 = getelementptr inbounds %struct.uni_msg, %struct.uni_msg* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 4
  %9 = load i32, i32* @M_UNIMSG, align 4
  %10 = call i32 @free(i32 %8, i32 %9)
  %11 = call i32 @mtx_lock(i32* @ngatm_unilist_mtx)
  %12 = load %struct.ngatm_msg*, %struct.ngatm_msg** %3, align 8
  %13 = load i32, i32* @link, align 4
  %14 = call i32 @LIST_INSERT_HEAD(i32* @ngatm_freeuni, %struct.ngatm_msg* %12, i32 %13)
  %15 = call i32 @mtx_unlock(i32* @ngatm_unilist_mtx)
  ret void
}

declare dso_local i32 @free(i32, i32) #1

declare dso_local i32 @mtx_lock(i32*) #1

declare dso_local i32 @LIST_INSERT_HEAD(i32*, %struct.ngatm_msg*, i32) #1

declare dso_local i32 @mtx_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

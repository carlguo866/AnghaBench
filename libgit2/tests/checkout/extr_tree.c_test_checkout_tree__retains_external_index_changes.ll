; ModuleID = '/home/carl/AnghaBench/libgit2/tests/checkout/extr_tree.c_test_checkout_tree__retains_external_index_changes.c'
source_filename = "/home/carl/AnghaBench/libgit2/tests/checkout/extr_tree.c_test_checkout_tree__retains_external_index_changes.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32 }

@GIT_CHECKOUT_OPTIONS_INIT = common dso_local global %struct.TYPE_4__ zeroinitializer, align 4
@GIT_CHECKOUT_SAFE = common dso_local global i32 0, align 4
@g_repo = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @test_checkout_tree__retains_external_index_changes() #0 {
  %1 = alloca %struct.TYPE_4__, align 4
  %2 = bitcast %struct.TYPE_4__* %1 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %2, i8* align 4 bitcast (%struct.TYPE_4__* @GIT_CHECKOUT_OPTIONS_INIT to i8*), i64 4, i1 false)
  %3 = load i32, i32* @GIT_CHECKOUT_SAFE, align 4
  %4 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %1, i32 0, i32 0
  store i32 %3, i32* %4, align 4
  %5 = call i32 @modify_index_and_checkout_tree(%struct.TYPE_4__* %1)
  %6 = load i32, i32* @g_repo, align 4
  %7 = call i32 @assert_status_entrycount(i32 %6, i32 1)
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @modify_index_and_checkout_tree(%struct.TYPE_4__*) #2

declare dso_local i32 @assert_status_entrycount(i32, i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

; ModuleID = '/home/carl/AnghaBench/freebsd/sys/contrib/libnv/extr_nvpair.c_nvpair_prev.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/contrib/libnv/extr_nvpair.c_nvpair_prev.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i32* }

@nvl_head = common dso_local global i32 0, align 4
@nvp_next = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.TYPE_7__* @nvpair_prev(%struct.TYPE_7__* %0) #0 {
  %2 = alloca %struct.TYPE_7__*, align 8
  store %struct.TYPE_7__* %0, %struct.TYPE_7__** %2, align 8
  %3 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %4 = call i32 @NVPAIR_ASSERT(%struct.TYPE_7__* %3)
  %5 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %6 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %5, i32 0, i32 0
  %7 = load i32*, i32** %6, align 8
  %8 = icmp ne i32* %7, null
  %9 = zext i1 %8 to i32
  %10 = call i32 @PJDLOG_ASSERT(i32 %9)
  %11 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %12 = load i32, i32* @nvl_head, align 4
  %13 = load i32, i32* @nvp_next, align 4
  %14 = call %struct.TYPE_7__* @TAILQ_PREV(%struct.TYPE_7__* %11, i32 %12, i32 %13)
  ret %struct.TYPE_7__* %14
}

declare dso_local i32 @NVPAIR_ASSERT(%struct.TYPE_7__*) #1

declare dso_local i32 @PJDLOG_ASSERT(i32) #1

declare dso_local %struct.TYPE_7__* @TAILQ_PREV(%struct.TYPE_7__*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

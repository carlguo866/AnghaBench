; ModuleID = '/home/carl/AnghaBench/h2o/deps/quicly/lib/extr_quicly.c_setup_application_space.c'
source_filename = "/home/carl/AnghaBench/h2o/deps/quicly/lib/extr_quicly.c_setup_application_space.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32* }

@PTLS_ERROR_NO_MEMORY = common dso_local global i32 0, align 4
@QUICLY_EPOCH_1RTT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_4__*)* @setup_application_space to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @setup_application_space(%struct.TYPE_4__* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_4__*, align 8
  store %struct.TYPE_4__* %0, %struct.TYPE_4__** %3, align 8
  %4 = call i64 @alloc_pn_space(i32 4)
  %5 = inttoptr i64 %4 to i8*
  %6 = bitcast i8* %5 to i32*
  %7 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %8 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %7, i32 0, i32 0
  store i32* %6, i32** %8, align 8
  %9 = icmp eq i32* %6, null
  br i1 %9, label %10, label %12

10:                                               ; preds = %1
  %11 = load i32, i32* @PTLS_ERROR_NO_MEMORY, align 4
  store i32 %11, i32* %2, align 4
  br label %16

12:                                               ; preds = %1
  %13 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %14 = load i32, i32* @QUICLY_EPOCH_1RTT, align 4
  %15 = call i32 @create_handshake_flow(%struct.TYPE_4__* %13, i32 %14)
  store i32 %15, i32* %2, align 4
  br label %16

16:                                               ; preds = %12, %10
  %17 = load i32, i32* %2, align 4
  ret i32 %17
}

declare dso_local i64 @alloc_pn_space(i32) #1

declare dso_local i32 @create_handshake_flow(%struct.TYPE_4__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/rpc.lockd/extr_lock_proc.c_nlm_unlock_res_1_svc.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/rpc.lockd/extr_lock_proc.c_nlm_unlock_res_1_svc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { %struct.TYPE_4__, i32 }
%struct.TYPE_4__ = type { i32 }
%struct.svc_req = type { i32 }

@debug_level = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [15 x i8] c"nlm_unlock_res\00", align 1
@NLM_VERS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @nlm_unlock_res_1_svc(%struct.TYPE_5__* %0, %struct.svc_req* %1) #0 {
  %3 = alloca %struct.TYPE_5__*, align 8
  %4 = alloca %struct.svc_req*, align 8
  store %struct.TYPE_5__* %0, %struct.TYPE_5__** %3, align 8
  store %struct.svc_req* %1, %struct.svc_req** %4, align 8
  %5 = load i64, i64* @debug_level, align 8
  %6 = icmp ne i64 %5, 0
  br i1 %6, label %7, label %10

7:                                                ; preds = %2
  %8 = load %struct.svc_req*, %struct.svc_req** %4, align 8
  %9 = call i32 @log_from_addr(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0), %struct.svc_req* %8)
  br label %10

10:                                               ; preds = %7, %2
  %11 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %12 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %11, i32 0, i32 1
  %13 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %14 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %13, i32 0, i32 0
  %15 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = load i32, i32* @NLM_VERS, align 4
  %18 = call i32 @lock_answer(i32 -1, i32* %12, i32 %16, i32* null, i32 %17)
  ret i8* null
}

declare dso_local i32 @log_from_addr(i8*, %struct.svc_req*) #1

declare dso_local i32 @lock_answer(i32, i32*, i32, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

; ModuleID = '/home/carl/AnghaBench/kphp-kdb/photo/extr_photo-engine.c_sigint_handler.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/photo/extr_photo-engine.c_sigint_handler.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@__const.sigint_handler.message = private unnamed_addr constant [17 x i8] c"SIGINT handled.\0A\00", align 16
@pending_signals = common dso_local global i32 0, align 4
@sigint_immediate_handler = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32)* @sigint_handler to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @sigint_handler(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca [17 x i8], align 16
  store i32 %0, i32* %2, align 4
  %4 = bitcast [17 x i8]* %3 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %4, i8* align 16 getelementptr inbounds ([17 x i8], [17 x i8]* @__const.sigint_handler.message, i32 0, i32 0), i64 17, i1 false)
  %5 = getelementptr inbounds [17 x i8], [17 x i8]* %3, i64 0, i64 0
  %6 = call i32 @kwrite(i32 2, i8* %5, i32 16)
  %7 = load i32, i32* %2, align 4
  %8 = shl i32 1, %7
  %9 = load i32, i32* @pending_signals, align 4
  %10 = or i32 %9, %8
  store i32 %10, i32* @pending_signals, align 4
  %11 = load i32, i32* %2, align 4
  %12 = load i32, i32* @sigint_immediate_handler, align 4
  %13 = call i32 @signal(i32 %11, i32 %12)
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @kwrite(i32, i8*, i32) #2

declare dso_local i32 @signal(i32, i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

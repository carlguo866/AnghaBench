; ModuleID = '/home/carl/AnghaBench/git/trace2/extr_tr2_tls.c_tr2tls_pop_self.c'
source_filename = "/home/carl/AnghaBench/git/trace2/extr_tr2_tls.c_tr2tls_pop_self.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tr2tls_thread_ctx = type { i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@.str = private unnamed_addr constant [31 x i8] c"no open regions in thread '%s'\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @tr2tls_pop_self() #0 {
  %1 = alloca %struct.tr2tls_thread_ctx*, align 8
  %2 = call %struct.tr2tls_thread_ctx* (...) @tr2tls_get_self()
  store %struct.tr2tls_thread_ctx* %2, %struct.tr2tls_thread_ctx** %1, align 8
  %3 = load %struct.tr2tls_thread_ctx*, %struct.tr2tls_thread_ctx** %1, align 8
  %4 = getelementptr inbounds %struct.tr2tls_thread_ctx, %struct.tr2tls_thread_ctx* %3, i32 0, i32 0
  %5 = load i32, i32* %4, align 4
  %6 = icmp ne i32 %5, 0
  br i1 %6, label %13, label %7

7:                                                ; preds = %0
  %8 = load %struct.tr2tls_thread_ctx*, %struct.tr2tls_thread_ctx** %1, align 8
  %9 = getelementptr inbounds %struct.tr2tls_thread_ctx, %struct.tr2tls_thread_ctx* %8, i32 0, i32 1
  %10 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = call i32 @BUG(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0), i32 %11)
  br label %13

13:                                               ; preds = %7, %0
  %14 = load %struct.tr2tls_thread_ctx*, %struct.tr2tls_thread_ctx** %1, align 8
  %15 = getelementptr inbounds %struct.tr2tls_thread_ctx, %struct.tr2tls_thread_ctx* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = add nsw i32 %16, -1
  store i32 %17, i32* %15, align 4
  ret void
}

declare dso_local %struct.tr2tls_thread_ctx* @tr2tls_get_self(...) #1

declare dso_local i32 @BUG(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

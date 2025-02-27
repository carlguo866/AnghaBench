; ModuleID = '/home/carl/AnghaBench/linux/mm/extr_kmemleak.c_kmemleak_seq_stop.c'
source_filename = "/home/carl/AnghaBench/linux/mm/extr_kmemleak.c_kmemleak_seq_stop.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.seq_file = type { i32 }

@scan_mutex = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.seq_file*, i8*)* @kmemleak_seq_stop to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @kmemleak_seq_stop(%struct.seq_file* %0, i8* %1) #0 {
  %3 = alloca %struct.seq_file*, align 8
  %4 = alloca i8*, align 8
  store %struct.seq_file* %0, %struct.seq_file** %3, align 8
  store i8* %1, i8** %4, align 8
  %5 = load i8*, i8** %4, align 8
  %6 = call i32 @IS_ERR(i8* %5)
  %7 = icmp ne i32 %6, 0
  br i1 %7, label %17, label %8

8:                                                ; preds = %2
  %9 = call i32 (...) @rcu_read_unlock()
  %10 = call i32 @mutex_unlock(i32* @scan_mutex)
  %11 = load i8*, i8** %4, align 8
  %12 = icmp ne i8* %11, null
  br i1 %12, label %13, label %16

13:                                               ; preds = %8
  %14 = load i8*, i8** %4, align 8
  %15 = call i32 @put_object(i8* %14)
  br label %16

16:                                               ; preds = %13, %8
  br label %17

17:                                               ; preds = %16, %2
  ret void
}

declare dso_local i32 @IS_ERR(i8*) #1

declare dso_local i32 @rcu_read_unlock(...) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @put_object(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

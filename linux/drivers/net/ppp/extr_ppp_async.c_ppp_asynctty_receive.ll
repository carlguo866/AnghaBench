; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ppp/extr_ppp_async.c_ppp_asynctty_receive.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ppp/extr_ppp_async.c_ppp_asynctty_receive.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tty_struct = type { i32 }
%struct.asyncppp = type { i32, i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.tty_struct*, i8*, i8*, i32)* @ppp_asynctty_receive to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ppp_asynctty_receive(%struct.tty_struct* %0, i8* %1, i8* %2, i32 %3) #0 {
  %5 = alloca %struct.tty_struct*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.asyncppp*, align 8
  %10 = alloca i64, align 8
  store %struct.tty_struct* %0, %struct.tty_struct** %5, align 8
  store i8* %1, i8** %6, align 8
  store i8* %2, i8** %7, align 8
  store i32 %3, i32* %8, align 4
  %11 = load %struct.tty_struct*, %struct.tty_struct** %5, align 8
  %12 = call %struct.asyncppp* @ap_get(%struct.tty_struct* %11)
  store %struct.asyncppp* %12, %struct.asyncppp** %9, align 8
  %13 = load %struct.asyncppp*, %struct.asyncppp** %9, align 8
  %14 = icmp ne %struct.asyncppp* %13, null
  br i1 %14, label %16, label %15

15:                                               ; preds = %4
  br label %43

16:                                               ; preds = %4
  %17 = load %struct.asyncppp*, %struct.asyncppp** %9, align 8
  %18 = getelementptr inbounds %struct.asyncppp, %struct.asyncppp* %17, i32 0, i32 2
  %19 = load i64, i64* %10, align 8
  %20 = call i32 @spin_lock_irqsave(i32* %18, i64 %19)
  %21 = load %struct.asyncppp*, %struct.asyncppp** %9, align 8
  %22 = load i8*, i8** %6, align 8
  %23 = load i8*, i8** %7, align 8
  %24 = load i32, i32* %8, align 4
  %25 = call i32 @ppp_async_input(%struct.asyncppp* %21, i8* %22, i8* %23, i32 %24)
  %26 = load %struct.asyncppp*, %struct.asyncppp** %9, align 8
  %27 = getelementptr inbounds %struct.asyncppp, %struct.asyncppp* %26, i32 0, i32 2
  %28 = load i64, i64* %10, align 8
  %29 = call i32 @spin_unlock_irqrestore(i32* %27, i64 %28)
  %30 = load %struct.asyncppp*, %struct.asyncppp** %9, align 8
  %31 = getelementptr inbounds %struct.asyncppp, %struct.asyncppp* %30, i32 0, i32 1
  %32 = call i32 @skb_queue_empty(i32* %31)
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %38, label %34

34:                                               ; preds = %16
  %35 = load %struct.asyncppp*, %struct.asyncppp** %9, align 8
  %36 = getelementptr inbounds %struct.asyncppp, %struct.asyncppp* %35, i32 0, i32 0
  %37 = call i32 @tasklet_schedule(i32* %36)
  br label %38

38:                                               ; preds = %34, %16
  %39 = load %struct.asyncppp*, %struct.asyncppp** %9, align 8
  %40 = call i32 @ap_put(%struct.asyncppp* %39)
  %41 = load %struct.tty_struct*, %struct.tty_struct** %5, align 8
  %42 = call i32 @tty_unthrottle(%struct.tty_struct* %41)
  br label %43

43:                                               ; preds = %38, %15
  ret void
}

declare dso_local %struct.asyncppp* @ap_get(%struct.tty_struct*) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @ppp_async_input(%struct.asyncppp*, i8*, i8*, i32) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @skb_queue_empty(i32*) #1

declare dso_local i32 @tasklet_schedule(i32*) #1

declare dso_local i32 @ap_put(%struct.asyncppp*) #1

declare dso_local i32 @tty_unthrottle(%struct.tty_struct*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

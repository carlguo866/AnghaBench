; ModuleID = '/home/carl/AnghaBench/redis/deps/hiredis/extr_test.c_do_reconnect.c'
source_filename = "/home/carl/AnghaBench/redis/deps/hiredis/extr_test.c_do_reconnect.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.config = type { i64 }

@CONN_SSL = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i64)* @do_reconnect to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @do_reconnect(i32* %0, i64 %1) #0 {
  %3 = alloca %struct.config, align 8
  %4 = alloca i32*, align 8
  %5 = getelementptr inbounds %struct.config, %struct.config* %3, i32 0, i32 0
  store i64 %1, i64* %5, align 8
  store i32* %0, i32** %4, align 8
  %6 = load i32*, i32** %4, align 8
  %7 = call i32 @redisReconnect(i32* %6)
  %8 = getelementptr inbounds %struct.config, %struct.config* %3, i32 0, i32 0
  %9 = load i64, i64* %8, align 8
  %10 = load i64, i64* @CONN_SSL, align 8
  %11 = icmp eq i64 %9, %10
  br i1 %11, label %12, label %17

12:                                               ; preds = %2
  %13 = load i32*, i32** %4, align 8
  %14 = getelementptr inbounds %struct.config, %struct.config* %3, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = call i32 @do_ssl_handshake(i32* %13, i64 %15)
  br label %17

17:                                               ; preds = %12, %2
  ret void
}

declare dso_local i32 @redisReconnect(i32*) #1

declare dso_local i32 @do_ssl_handshake(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

; ModuleID = '/home/carl/AnghaBench/linux/net/ipv4/extr_inet_hashtables.c_sock_gen_put.c'
source_filename = "/home/carl/AnghaBench/linux/net/ipv4/extr_inet_hashtables.c_sock_gen_put.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sock = type { i64, i32 }

@TCP_TIME_WAIT = common dso_local global i64 0, align 8
@TCP_NEW_SYN_RECV = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @sock_gen_put(%struct.sock* %0) #0 {
  %2 = alloca %struct.sock*, align 8
  store %struct.sock* %0, %struct.sock** %2, align 8
  %3 = load %struct.sock*, %struct.sock** %2, align 8
  %4 = getelementptr inbounds %struct.sock, %struct.sock* %3, i32 0, i32 1
  %5 = call i32 @refcount_dec_and_test(i32* %4)
  %6 = icmp ne i32 %5, 0
  br i1 %6, label %8, label %7

7:                                                ; preds = %1
  br label %32

8:                                                ; preds = %1
  %9 = load %struct.sock*, %struct.sock** %2, align 8
  %10 = getelementptr inbounds %struct.sock, %struct.sock* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  %12 = load i64, i64* @TCP_TIME_WAIT, align 8
  %13 = icmp eq i64 %11, %12
  br i1 %13, label %14, label %18

14:                                               ; preds = %8
  %15 = load %struct.sock*, %struct.sock** %2, align 8
  %16 = call i32 @inet_twsk(%struct.sock* %15)
  %17 = call i32 @inet_twsk_free(i32 %16)
  br label %32

18:                                               ; preds = %8
  %19 = load %struct.sock*, %struct.sock** %2, align 8
  %20 = getelementptr inbounds %struct.sock, %struct.sock* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = load i64, i64* @TCP_NEW_SYN_RECV, align 8
  %23 = icmp eq i64 %21, %22
  br i1 %23, label %24, label %28

24:                                               ; preds = %18
  %25 = load %struct.sock*, %struct.sock** %2, align 8
  %26 = call i32 @inet_reqsk(%struct.sock* %25)
  %27 = call i32 @reqsk_free(i32 %26)
  br label %31

28:                                               ; preds = %18
  %29 = load %struct.sock*, %struct.sock** %2, align 8
  %30 = call i32 @sk_free(%struct.sock* %29)
  br label %31

31:                                               ; preds = %28, %24
  br label %32

32:                                               ; preds = %7, %31, %14
  ret void
}

declare dso_local i32 @refcount_dec_and_test(i32*) #1

declare dso_local i32 @inet_twsk_free(i32) #1

declare dso_local i32 @inet_twsk(%struct.sock*) #1

declare dso_local i32 @reqsk_free(i32) #1

declare dso_local i32 @inet_reqsk(%struct.sock*) #1

declare dso_local i32 @sk_free(%struct.sock*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

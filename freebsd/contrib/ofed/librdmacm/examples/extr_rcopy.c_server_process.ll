; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/ofed/librdmacm/examples/extr_rcopy.c_server_process.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/ofed/librdmacm/examples/extr_rcopy.c_server_process.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.msg_hdr = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32)* @server_process to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @server_process(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.msg_hdr, align 4
  %4 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  br label %5

5:                                                ; preds = %29, %1
  %6 = load i32, i32* %2, align 4
  %7 = call i32 @msg_recv_hdr(i32 %6, %struct.msg_hdr* %3)
  store i32 %7, i32* %4, align 4
  %8 = load i32, i32* %4, align 4
  %9 = sext i32 %8 to i64
  %10 = icmp ne i64 %9, 4
  br i1 %10, label %11, label %12

11:                                               ; preds = %5
  br label %33

12:                                               ; preds = %5
  %13 = getelementptr inbounds %struct.msg_hdr, %struct.msg_hdr* %3, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  switch i32 %14, label %24 [
    i32 129, label %15
    i32 130, label %18
    i32 128, label %21
  ]

15:                                               ; preds = %12
  %16 = load i32, i32* %2, align 4
  %17 = call i32 @server_open(i32 %16, %struct.msg_hdr* %3)
  store i32 %17, i32* %4, align 4
  br label %28

18:                                               ; preds = %12
  %19 = load i32, i32* %2, align 4
  %20 = call i32 @server_close(i32 %19, %struct.msg_hdr* %3)
  store i32 0, i32* %4, align 4
  br label %28

21:                                               ; preds = %12
  %22 = load i32, i32* %2, align 4
  %23 = call i32 @server_write(i32 %22, %struct.msg_hdr* %3)
  store i32 %23, i32* %4, align 4
  br label %28

24:                                               ; preds = %12
  %25 = load i32, i32* %2, align 4
  %26 = load i32, i32* @EINVAL, align 4
  %27 = call i32 @msg_send_resp(i32 %25, %struct.msg_hdr* %3, i32 %26)
  store i32 -1, i32* %4, align 4
  br label %28

28:                                               ; preds = %24, %21, %18, %15
  br label %29

29:                                               ; preds = %28
  %30 = load i32, i32* %4, align 4
  %31 = icmp ne i32 %30, 0
  %32 = xor i1 %31, true
  br i1 %32, label %5, label %33

33:                                               ; preds = %29, %11
  ret void
}

declare dso_local i32 @msg_recv_hdr(i32, %struct.msg_hdr*) #1

declare dso_local i32 @server_open(i32, %struct.msg_hdr*) #1

declare dso_local i32 @server_close(i32, %struct.msg_hdr*) #1

declare dso_local i32 @server_write(i32, %struct.msg_hdr*) #1

declare dso_local i32 @msg_send_resp(i32, %struct.msg_hdr*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/core/extr_netlink.c_ibnl_put_msg.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/core/extr_netlink.c_ibnl_put_msg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i32 }
%struct.nlmsghdr = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @ibnl_put_msg(%struct.sk_buff* %0, %struct.nlmsghdr** %1, i32 %2, i32 %3, i32 %4, i32 %5, i32 %6) #0 {
  %8 = alloca i8*, align 8
  %9 = alloca %struct.sk_buff*, align 8
  %10 = alloca %struct.nlmsghdr**, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store %struct.sk_buff* %0, %struct.sk_buff** %9, align 8
  store %struct.nlmsghdr** %1, %struct.nlmsghdr*** %10, align 8
  store i32 %2, i32* %11, align 4
  store i32 %3, i32* %12, align 4
  store i32 %4, i32* %13, align 4
  store i32 %5, i32* %14, align 4
  store i32 %6, i32* %15, align 4
  %16 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %17 = load i32, i32* %11, align 4
  %18 = load i32, i32* %13, align 4
  %19 = load i32, i32* %14, align 4
  %20 = call i32 @RDMA_NL_GET_TYPE(i32 %18, i32 %19)
  %21 = load i32, i32* %12, align 4
  %22 = load i32, i32* %15, align 4
  %23 = call %struct.nlmsghdr* @nlmsg_put(%struct.sk_buff* %16, i32 0, i32 %17, i32 %20, i32 %21, i32 %22)
  %24 = load %struct.nlmsghdr**, %struct.nlmsghdr*** %10, align 8
  store %struct.nlmsghdr* %23, %struct.nlmsghdr** %24, align 8
  %25 = load %struct.nlmsghdr**, %struct.nlmsghdr*** %10, align 8
  %26 = load %struct.nlmsghdr*, %struct.nlmsghdr** %25, align 8
  %27 = icmp ne %struct.nlmsghdr* %26, null
  br i1 %27, label %29, label %28

28:                                               ; preds = %7
  store i8* null, i8** %8, align 8
  br label %33

29:                                               ; preds = %7
  %30 = load %struct.nlmsghdr**, %struct.nlmsghdr*** %10, align 8
  %31 = load %struct.nlmsghdr*, %struct.nlmsghdr** %30, align 8
  %32 = call i8* @nlmsg_data(%struct.nlmsghdr* %31)
  store i8* %32, i8** %8, align 8
  br label %33

33:                                               ; preds = %29, %28
  %34 = load i8*, i8** %8, align 8
  ret i8* %34
}

declare dso_local %struct.nlmsghdr* @nlmsg_put(%struct.sk_buff*, i32, i32, i32, i32, i32) #1

declare dso_local i32 @RDMA_NL_GET_TYPE(i32, i32) #1

declare dso_local i8* @nlmsg_data(%struct.nlmsghdr*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

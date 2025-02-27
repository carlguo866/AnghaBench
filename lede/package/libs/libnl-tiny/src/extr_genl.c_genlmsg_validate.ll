; ModuleID = '/home/carl/AnghaBench/lede/package/libs/libnl-tiny/src/extr_genl.c_genlmsg_validate.c'
source_filename = "/home/carl/AnghaBench/lede/package/libs/libnl-tiny/src/extr_genl.c_genlmsg_validate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nlmsghdr = type { i32 }
%struct.nla_policy = type { i32 }
%struct.genlmsghdr = type { i32 }

@NLE_MSG_TOOSHORT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @genlmsg_validate(%struct.nlmsghdr* %0, i32 %1, i32 %2, %struct.nla_policy* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.nlmsghdr*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.nla_policy*, align 8
  %10 = alloca %struct.genlmsghdr*, align 8
  store %struct.nlmsghdr* %0, %struct.nlmsghdr** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store %struct.nla_policy* %3, %struct.nla_policy** %9, align 8
  %11 = load %struct.nlmsghdr*, %struct.nlmsghdr** %6, align 8
  %12 = load i32, i32* %7, align 4
  %13 = call i32 @genlmsg_valid_hdr(%struct.nlmsghdr* %11, i32 %12)
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %18, label %15

15:                                               ; preds = %4
  %16 = load i32, i32* @NLE_MSG_TOOSHORT, align 4
  %17 = sub nsw i32 0, %16
  store i32 %17, i32* %5, align 4
  br label %30

18:                                               ; preds = %4
  %19 = load %struct.nlmsghdr*, %struct.nlmsghdr** %6, align 8
  %20 = call %struct.genlmsghdr* @nlmsg_data(%struct.nlmsghdr* %19)
  store %struct.genlmsghdr* %20, %struct.genlmsghdr** %10, align 8
  %21 = load %struct.genlmsghdr*, %struct.genlmsghdr** %10, align 8
  %22 = load i32, i32* %7, align 4
  %23 = call i32 @genlmsg_attrdata(%struct.genlmsghdr* %21, i32 %22)
  %24 = load %struct.genlmsghdr*, %struct.genlmsghdr** %10, align 8
  %25 = load i32, i32* %7, align 4
  %26 = call i32 @genlmsg_attrlen(%struct.genlmsghdr* %24, i32 %25)
  %27 = load i32, i32* %8, align 4
  %28 = load %struct.nla_policy*, %struct.nla_policy** %9, align 8
  %29 = call i32 @nla_validate(i32 %23, i32 %26, i32 %27, %struct.nla_policy* %28)
  store i32 %29, i32* %5, align 4
  br label %30

30:                                               ; preds = %18, %15
  %31 = load i32, i32* %5, align 4
  ret i32 %31
}

declare dso_local i32 @genlmsg_valid_hdr(%struct.nlmsghdr*, i32) #1

declare dso_local %struct.genlmsghdr* @nlmsg_data(%struct.nlmsghdr*) #1

declare dso_local i32 @nla_validate(i32, i32, i32, %struct.nla_policy*) #1

declare dso_local i32 @genlmsg_attrdata(%struct.genlmsghdr*, i32) #1

declare dso_local i32 @genlmsg_attrlen(%struct.genlmsghdr*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

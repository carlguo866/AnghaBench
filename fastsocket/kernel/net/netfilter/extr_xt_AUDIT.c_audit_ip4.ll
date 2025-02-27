; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/netfilter/extr_xt_AUDIT.c_audit_ip4.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/netfilter/extr_xt_AUDIT.c_audit_ip4.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.audit_buffer = type { i32 }
%struct.sk_buff = type { i32 }
%struct.iphdr = type { i32, i32, i32, i32, i32, i32 }

@.str = private unnamed_addr constant [13 x i8] c" truncated=1\00", align 1
@.str.1 = private unnamed_addr constant [43 x i8] c" saddr=%pI4 daddr=%pI4 ipid=%hu proto=%hhu\00", align 1
@IP_OFFSET = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [8 x i8] c" frag=1\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.audit_buffer*, %struct.sk_buff*)* @audit_ip4 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @audit_ip4(%struct.audit_buffer* %0, %struct.sk_buff* %1) #0 {
  %3 = alloca %struct.audit_buffer*, align 8
  %4 = alloca %struct.sk_buff*, align 8
  %5 = alloca %struct.iphdr, align 4
  %6 = alloca %struct.iphdr*, align 8
  store %struct.audit_buffer* %0, %struct.audit_buffer** %3, align 8
  store %struct.sk_buff* %1, %struct.sk_buff** %4, align 8
  %7 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %8 = call %struct.iphdr* @skb_header_pointer(%struct.sk_buff* %7, i32 0, i32 24, %struct.iphdr* %5)
  store %struct.iphdr* %8, %struct.iphdr** %6, align 8
  %9 = load %struct.iphdr*, %struct.iphdr** %6, align 8
  %10 = icmp ne %struct.iphdr* %9, null
  br i1 %10, label %14, label %11

11:                                               ; preds = %2
  %12 = load %struct.audit_buffer*, %struct.audit_buffer** %3, align 8
  %13 = call i32 (%struct.audit_buffer*, i8*, ...) @audit_log_format(%struct.audit_buffer* %12, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0))
  br label %49

14:                                               ; preds = %2
  %15 = load %struct.audit_buffer*, %struct.audit_buffer** %3, align 8
  %16 = load %struct.iphdr*, %struct.iphdr** %6, align 8
  %17 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %16, i32 0, i32 5
  %18 = load %struct.iphdr*, %struct.iphdr** %6, align 8
  %19 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %18, i32 0, i32 4
  %20 = load %struct.iphdr*, %struct.iphdr** %6, align 8
  %21 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %20, i32 0, i32 3
  %22 = load i32, i32* %21, align 4
  %23 = call i32 @ntohs(i32 %22)
  %24 = load %struct.iphdr*, %struct.iphdr** %6, align 8
  %25 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 4
  %27 = call i32 (%struct.audit_buffer*, i8*, ...) @audit_log_format(%struct.audit_buffer* %15, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.1, i64 0, i64 0), i32* %17, i32* %19, i32 %23, i32 %26)
  %28 = load %struct.iphdr*, %struct.iphdr** %6, align 8
  %29 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %28, i32 0, i32 2
  %30 = load i32, i32* %29, align 4
  %31 = call i32 @ntohs(i32 %30)
  %32 = load i32, i32* @IP_OFFSET, align 4
  %33 = and i32 %31, %32
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %38

35:                                               ; preds = %14
  %36 = load %struct.audit_buffer*, %struct.audit_buffer** %3, align 8
  %37 = call i32 (%struct.audit_buffer*, i8*, ...) @audit_log_format(%struct.audit_buffer* %36, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i64 0, i64 0))
  br label %49

38:                                               ; preds = %14
  %39 = load %struct.audit_buffer*, %struct.audit_buffer** %3, align 8
  %40 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %41 = load %struct.iphdr*, %struct.iphdr** %6, align 8
  %42 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %41, i32 0, i32 1
  %43 = load i32, i32* %42, align 4
  %44 = load %struct.iphdr*, %struct.iphdr** %6, align 8
  %45 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = mul nsw i32 %46, 4
  %48 = call i32 @audit_proto(%struct.audit_buffer* %39, %struct.sk_buff* %40, i32 %43, i32 %47)
  br label %49

49:                                               ; preds = %38, %35, %11
  ret void
}

declare dso_local %struct.iphdr* @skb_header_pointer(%struct.sk_buff*, i32, i32, %struct.iphdr*) #1

declare dso_local i32 @audit_log_format(%struct.audit_buffer*, i8*, ...) #1

declare dso_local i32 @ntohs(i32) #1

declare dso_local i32 @audit_proto(%struct.audit_buffer*, %struct.sk_buff*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

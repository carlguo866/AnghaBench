; ModuleID = '/home/carl/AnghaBench/linux/net/dccp/extr_proto.c_dccp_sendmsg.c'
source_filename = "/home/carl/AnghaBench/linux/net/dccp/extr_proto.c_dccp_sendmsg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sock = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i64 }
%struct.msghdr = type { i32 }
%struct.dccp_sock = type { i64, i32 }
%struct.sk_buff = type { i32 }

@MSG_DONTWAIT = common dso_local global i32 0, align 4
@EMSGSIZE = common dso_local global i32 0, align 4
@EAGAIN = common dso_local global i32 0, align 4
@DCCPF_OPEN = common dso_local global i32 0, align 4
@DCCPF_PARTOPEN = common dso_local global i32 0, align 4
@DCCP_CLOSED = common dso_local global i32 0, align 4
@ENOTCONN = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @dccp_sendmsg(%struct.sock* %0, %struct.msghdr* %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.sock*, align 8
  %6 = alloca %struct.msghdr*, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.dccp_sock*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.sk_buff*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i64, align 8
  store %struct.sock* %0, %struct.sock** %5, align 8
  store %struct.msghdr* %1, %struct.msghdr** %6, align 8
  store i64 %2, i64* %7, align 8
  %15 = load %struct.sock*, %struct.sock** %5, align 8
  %16 = call %struct.dccp_sock* @dccp_sk(%struct.sock* %15)
  store %struct.dccp_sock* %16, %struct.dccp_sock** %8, align 8
  %17 = load %struct.msghdr*, %struct.msghdr** %6, align 8
  %18 = getelementptr inbounds %struct.msghdr, %struct.msghdr* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  store i32 %19, i32* %9, align 4
  %20 = load i32, i32* %9, align 4
  %21 = load i32, i32* @MSG_DONTWAIT, align 4
  %22 = and i32 %20, %21
  store i32 %22, i32* %10, align 4
  %23 = load %struct.sock*, %struct.sock** %5, align 8
  %24 = load i64, i64* %7, align 8
  %25 = call i32 @trace_dccp_probe(%struct.sock* %23, i64 %24)
  %26 = load i64, i64* %7, align 8
  %27 = load %struct.dccp_sock*, %struct.dccp_sock** %8, align 8
  %28 = getelementptr inbounds %struct.dccp_sock, %struct.dccp_sock* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = icmp ugt i64 %26, %29
  br i1 %30, label %31, label %34

31:                                               ; preds = %3
  %32 = load i32, i32* @EMSGSIZE, align 4
  %33 = sub nsw i32 0, %32
  store i32 %33, i32* %4, align 4
  br label %143

34:                                               ; preds = %3
  %35 = load %struct.sock*, %struct.sock** %5, align 8
  %36 = call i32 @lock_sock(%struct.sock* %35)
  %37 = load %struct.sock*, %struct.sock** %5, align 8
  %38 = call i64 @dccp_qpolicy_full(%struct.sock* %37)
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %43

40:                                               ; preds = %34
  %41 = load i32, i32* @EAGAIN, align 4
  %42 = sub nsw i32 0, %41
  store i32 %42, i32* %12, align 4
  br label %128

43:                                               ; preds = %34
  %44 = load %struct.sock*, %struct.sock** %5, align 8
  %45 = load i32, i32* %10, align 4
  %46 = call i64 @sock_sndtimeo(%struct.sock* %44, i32 %45)
  store i64 %46, i64* %14, align 8
  %47 = load %struct.sock*, %struct.sock** %5, align 8
  %48 = getelementptr inbounds %struct.sock, %struct.sock* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 8
  %50 = shl i32 1, %49
  %51 = load i32, i32* @DCCPF_OPEN, align 4
  %52 = load i32, i32* @DCCPF_PARTOPEN, align 4
  %53 = or i32 %51, %52
  %54 = xor i32 %53, -1
  %55 = and i32 %50, %54
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %57, label %63

57:                                               ; preds = %43
  %58 = load %struct.sock*, %struct.sock** %5, align 8
  %59 = call i32 @sk_stream_wait_connect(%struct.sock* %58, i64* %14)
  store i32 %59, i32* %12, align 4
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %61, label %62

61:                                               ; preds = %57
  br label %128

62:                                               ; preds = %57
  br label %63

63:                                               ; preds = %62, %43
  %64 = load %struct.sock*, %struct.sock** %5, align 8
  %65 = getelementptr inbounds %struct.sock, %struct.sock* %64, i32 0, i32 1
  %66 = load %struct.TYPE_2__*, %struct.TYPE_2__** %65, align 8
  %67 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %66, i32 0, i32 0
  %68 = load i64, i64* %67, align 8
  %69 = load i64, i64* %7, align 8
  %70 = add i64 %68, %69
  %71 = trunc i64 %70 to i32
  store i32 %71, i32* %13, align 4
  %72 = load %struct.sock*, %struct.sock** %5, align 8
  %73 = call i32 @release_sock(%struct.sock* %72)
  %74 = load %struct.sock*, %struct.sock** %5, align 8
  %75 = load i32, i32* %13, align 4
  %76 = load i32, i32* %10, align 4
  %77 = call %struct.sk_buff* @sock_alloc_send_skb(%struct.sock* %74, i32 %75, i32 %76, i32* %12)
  store %struct.sk_buff* %77, %struct.sk_buff** %11, align 8
  %78 = load %struct.sock*, %struct.sock** %5, align 8
  %79 = call i32 @lock_sock(%struct.sock* %78)
  %80 = load %struct.sk_buff*, %struct.sk_buff** %11, align 8
  %81 = icmp eq %struct.sk_buff* %80, null
  br i1 %81, label %82, label %83

82:                                               ; preds = %63
  br label %128

83:                                               ; preds = %63
  %84 = load %struct.sock*, %struct.sock** %5, align 8
  %85 = getelementptr inbounds %struct.sock, %struct.sock* %84, i32 0, i32 0
  %86 = load i32, i32* %85, align 8
  %87 = load i32, i32* @DCCP_CLOSED, align 4
  %88 = icmp eq i32 %86, %87
  br i1 %88, label %89, label %92

89:                                               ; preds = %83
  %90 = load i32, i32* @ENOTCONN, align 4
  %91 = sub nsw i32 0, %90
  store i32 %91, i32* %12, align 4
  br label %140

92:                                               ; preds = %83
  %93 = load %struct.sk_buff*, %struct.sk_buff** %11, align 8
  %94 = load %struct.sock*, %struct.sock** %5, align 8
  %95 = getelementptr inbounds %struct.sock, %struct.sock* %94, i32 0, i32 1
  %96 = load %struct.TYPE_2__*, %struct.TYPE_2__** %95, align 8
  %97 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %96, i32 0, i32 0
  %98 = load i64, i64* %97, align 8
  %99 = call i32 @skb_reserve(%struct.sk_buff* %93, i64 %98)
  %100 = load %struct.sk_buff*, %struct.sk_buff** %11, align 8
  %101 = load i64, i64* %7, align 8
  %102 = call i32 @skb_put(%struct.sk_buff* %100, i64 %101)
  %103 = load %struct.msghdr*, %struct.msghdr** %6, align 8
  %104 = load i64, i64* %7, align 8
  %105 = call i32 @memcpy_from_msg(i32 %102, %struct.msghdr* %103, i64 %104)
  store i32 %105, i32* %12, align 4
  %106 = load i32, i32* %12, align 4
  %107 = icmp ne i32 %106, 0
  br i1 %107, label %108, label %109

108:                                              ; preds = %92
  br label %140

109:                                              ; preds = %92
  %110 = load %struct.msghdr*, %struct.msghdr** %6, align 8
  %111 = load %struct.sk_buff*, %struct.sk_buff** %11, align 8
  %112 = call i32 @dccp_msghdr_parse(%struct.msghdr* %110, %struct.sk_buff* %111)
  store i32 %112, i32* %12, align 4
  %113 = load i32, i32* %12, align 4
  %114 = icmp ne i32 %113, 0
  br i1 %114, label %115, label %116

115:                                              ; preds = %109
  br label %140

116:                                              ; preds = %109
  %117 = load %struct.sock*, %struct.sock** %5, align 8
  %118 = load %struct.sk_buff*, %struct.sk_buff** %11, align 8
  %119 = call i32 @dccp_qpolicy_push(%struct.sock* %117, %struct.sk_buff* %118)
  %120 = load %struct.dccp_sock*, %struct.dccp_sock** %8, align 8
  %121 = getelementptr inbounds %struct.dccp_sock, %struct.dccp_sock* %120, i32 0, i32 1
  %122 = call i32 @timer_pending(i32* %121)
  %123 = icmp ne i32 %122, 0
  br i1 %123, label %127, label %124

124:                                              ; preds = %116
  %125 = load %struct.sock*, %struct.sock** %5, align 8
  %126 = call i32 @dccp_write_xmit(%struct.sock* %125)
  br label %127

127:                                              ; preds = %124, %116
  br label %128

128:                                              ; preds = %140, %127, %82, %61, %40
  %129 = load %struct.sock*, %struct.sock** %5, align 8
  %130 = call i32 @release_sock(%struct.sock* %129)
  %131 = load i32, i32* %12, align 4
  %132 = icmp ne i32 %131, 0
  br i1 %132, label %133, label %135

133:                                              ; preds = %128
  %134 = sext i32 %131 to i64
  br label %137

135:                                              ; preds = %128
  %136 = load i64, i64* %7, align 8
  br label %137

137:                                              ; preds = %135, %133
  %138 = phi i64 [ %134, %133 ], [ %136, %135 ]
  %139 = trunc i64 %138 to i32
  store i32 %139, i32* %4, align 4
  br label %143

140:                                              ; preds = %115, %108, %89
  %141 = load %struct.sk_buff*, %struct.sk_buff** %11, align 8
  %142 = call i32 @kfree_skb(%struct.sk_buff* %141)
  br label %128

143:                                              ; preds = %137, %31
  %144 = load i32, i32* %4, align 4
  ret i32 %144
}

declare dso_local %struct.dccp_sock* @dccp_sk(%struct.sock*) #1

declare dso_local i32 @trace_dccp_probe(%struct.sock*, i64) #1

declare dso_local i32 @lock_sock(%struct.sock*) #1

declare dso_local i64 @dccp_qpolicy_full(%struct.sock*) #1

declare dso_local i64 @sock_sndtimeo(%struct.sock*, i32) #1

declare dso_local i32 @sk_stream_wait_connect(%struct.sock*, i64*) #1

declare dso_local i32 @release_sock(%struct.sock*) #1

declare dso_local %struct.sk_buff* @sock_alloc_send_skb(%struct.sock*, i32, i32, i32*) #1

declare dso_local i32 @skb_reserve(%struct.sk_buff*, i64) #1

declare dso_local i32 @memcpy_from_msg(i32, %struct.msghdr*, i64) #1

declare dso_local i32 @skb_put(%struct.sk_buff*, i64) #1

declare dso_local i32 @dccp_msghdr_parse(%struct.msghdr*, %struct.sk_buff*) #1

declare dso_local i32 @dccp_qpolicy_push(%struct.sock*, %struct.sk_buff*) #1

declare dso_local i32 @timer_pending(i32*) #1

declare dso_local i32 @dccp_write_xmit(%struct.sock*) #1

declare dso_local i32 @kfree_skb(%struct.sk_buff*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

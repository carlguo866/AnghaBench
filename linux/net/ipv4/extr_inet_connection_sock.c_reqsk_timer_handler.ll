; ModuleID = '/home/carl/AnghaBench/linux/net/ipv4/extr_inet_connection_sock.c_reqsk_timer_handler.c'
source_filename = "/home/carl/AnghaBench/linux/net/ipv4/extr_inet_connection_sock.c_reqsk_timer_handler.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.request_sock = type { i32, i32, %struct.TYPE_5__*, %struct.sock* }
%struct.TYPE_5__ = type { i32 (%struct.request_sock*)* }
%struct.sock = type { i32 }
%struct.timer_list = type { i32 }
%struct.net = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }
%struct.inet_connection_sock = type { i64, %struct.request_sock_queue }
%struct.request_sock_queue = type { i32, i32 }
%struct.TYPE_6__ = type { i64 }

@rsk_timer = common dso_local global i32 0, align 4
@TCP_LISTEN = common dso_local global i64 0, align 8
@TCP_TIMEOUT_INIT = common dso_local global i32 0, align 4
@TCP_RTO_MAX = common dso_local global i32 0, align 4
@jiffies = common dso_local global i64 0, align 8
@req = common dso_local global %struct.request_sock* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.timer_list*)* @reqsk_timer_handler to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @reqsk_timer_handler(%struct.timer_list* %0) #0 {
  %2 = alloca %struct.timer_list*, align 8
  %3 = alloca %struct.request_sock*, align 8
  %4 = alloca %struct.sock*, align 8
  %5 = alloca %struct.net*, align 8
  %6 = alloca %struct.inet_connection_sock*, align 8
  %7 = alloca %struct.request_sock_queue*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i64, align 8
  store %struct.timer_list* %0, %struct.timer_list** %2, align 8
  %16 = load %struct.request_sock*, %struct.request_sock** %3, align 8
  %17 = ptrtoint %struct.request_sock* %16 to i32
  %18 = load %struct.timer_list*, %struct.timer_list** %2, align 8
  %19 = load i32, i32* @rsk_timer, align 4
  %20 = call %struct.request_sock* @from_timer(i32 %17, %struct.timer_list* %18, i32 %19)
  store %struct.request_sock* %20, %struct.request_sock** %3, align 8
  %21 = load %struct.request_sock*, %struct.request_sock** %3, align 8
  %22 = getelementptr inbounds %struct.request_sock, %struct.request_sock* %21, i32 0, i32 3
  %23 = load %struct.sock*, %struct.sock** %22, align 8
  store %struct.sock* %23, %struct.sock** %4, align 8
  %24 = load %struct.sock*, %struct.sock** %4, align 8
  %25 = call %struct.net* @sock_net(%struct.sock* %24)
  store %struct.net* %25, %struct.net** %5, align 8
  %26 = load %struct.sock*, %struct.sock** %4, align 8
  %27 = call %struct.inet_connection_sock* @inet_csk(%struct.sock* %26)
  store %struct.inet_connection_sock* %27, %struct.inet_connection_sock** %6, align 8
  %28 = load %struct.inet_connection_sock*, %struct.inet_connection_sock** %6, align 8
  %29 = getelementptr inbounds %struct.inet_connection_sock, %struct.inet_connection_sock* %28, i32 0, i32 1
  store %struct.request_sock_queue* %29, %struct.request_sock_queue** %7, align 8
  store i32 0, i32* %9, align 4
  store i32 0, i32* %10, align 4
  %30 = load %struct.sock*, %struct.sock** %4, align 8
  %31 = call i64 @inet_sk_state_load(%struct.sock* %30)
  %32 = load i64, i64* @TCP_LISTEN, align 8
  %33 = icmp ne i64 %31, %32
  br i1 %33, label %34, label %35

34:                                               ; preds = %1
  br label %141

35:                                               ; preds = %1
  %36 = load %struct.inet_connection_sock*, %struct.inet_connection_sock** %6, align 8
  %37 = getelementptr inbounds %struct.inet_connection_sock, %struct.inet_connection_sock* %36, i32 0, i32 0
  %38 = load i64, i64* %37, align 8
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %41

40:                                               ; preds = %35
  br label %47

41:                                               ; preds = %35
  %42 = load %struct.net*, %struct.net** %5, align 8
  %43 = getelementptr inbounds %struct.net, %struct.net* %42, i32 0, i32 0
  %44 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = sext i32 %45 to i64
  br label %47

47:                                               ; preds = %41, %40
  %48 = phi i64 [ %38, %40 ], [ %46, %41 ]
  %49 = trunc i64 %48 to i32
  store i32 %49, i32* %11, align 4
  %50 = load i32, i32* %11, align 4
  store i32 %50, i32* %12, align 4
  %51 = load %struct.request_sock_queue*, %struct.request_sock_queue** %7, align 8
  %52 = call i32 @reqsk_queue_len(%struct.request_sock_queue* %51)
  store i32 %52, i32* %8, align 4
  %53 = load i32, i32* %8, align 4
  %54 = shl i32 %53, 1
  %55 = load %struct.sock*, %struct.sock** %4, align 8
  %56 = getelementptr inbounds %struct.sock, %struct.sock* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 4
  %58 = call i32 @max(i32 8, i32 %57)
  %59 = icmp sgt i32 %54, %58
  br i1 %59, label %60, label %78

60:                                               ; preds = %47
  %61 = load %struct.request_sock_queue*, %struct.request_sock_queue** %7, align 8
  %62 = call i32 @reqsk_queue_len_young(%struct.request_sock_queue* %61)
  %63 = shl i32 %62, 1
  store i32 %63, i32* %14, align 4
  br label %64

64:                                               ; preds = %72, %60
  %65 = load i32, i32* %12, align 4
  %66 = icmp sgt i32 %65, 2
  br i1 %66, label %67, label %77

67:                                               ; preds = %64
  %68 = load i32, i32* %8, align 4
  %69 = load i32, i32* %14, align 4
  %70 = icmp slt i32 %68, %69
  br i1 %70, label %71, label %72

71:                                               ; preds = %67
  br label %77

72:                                               ; preds = %67
  %73 = load i32, i32* %12, align 4
  %74 = add nsw i32 %73, -1
  store i32 %74, i32* %12, align 4
  %75 = load i32, i32* %14, align 4
  %76 = shl i32 %75, 1
  store i32 %76, i32* %14, align 4
  br label %64

77:                                               ; preds = %71, %64
  br label %78

78:                                               ; preds = %77, %47
  %79 = load %struct.request_sock_queue*, %struct.request_sock_queue** %7, align 8
  %80 = getelementptr inbounds %struct.request_sock_queue, %struct.request_sock_queue* %79, i32 0, i32 1
  %81 = load i32, i32* %80, align 4
  %82 = call i32 @READ_ONCE(i32 %81)
  store i32 %82, i32* %13, align 4
  %83 = load i32, i32* %13, align 4
  %84 = icmp ne i32 %83, 0
  br i1 %84, label %85, label %87

85:                                               ; preds = %78
  %86 = load i32, i32* %13, align 4
  store i32 %86, i32* %11, align 4
  br label %87

87:                                               ; preds = %85, %78
  %88 = load %struct.request_sock*, %struct.request_sock** %3, align 8
  %89 = load i32, i32* %12, align 4
  %90 = load i32, i32* %11, align 4
  %91 = load i32, i32* %13, align 4
  %92 = call i32 @syn_ack_recalc(%struct.request_sock* %88, i32 %89, i32 %90, i32 %91, i32* %9, i32* %10)
  %93 = load %struct.request_sock*, %struct.request_sock** %3, align 8
  %94 = getelementptr inbounds %struct.request_sock, %struct.request_sock* %93, i32 0, i32 2
  %95 = load %struct.TYPE_5__*, %struct.TYPE_5__** %94, align 8
  %96 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %95, i32 0, i32 0
  %97 = load i32 (%struct.request_sock*)*, i32 (%struct.request_sock*)** %96, align 8
  %98 = load %struct.request_sock*, %struct.request_sock** %3, align 8
  %99 = call i32 %97(%struct.request_sock* %98)
  %100 = load i32, i32* %9, align 4
  %101 = icmp ne i32 %100, 0
  br i1 %101, label %140, label %102

102:                                              ; preds = %87
  %103 = load i32, i32* %10, align 4
  %104 = icmp ne i32 %103, 0
  br i1 %104, label %105, label %116

105:                                              ; preds = %102
  %106 = load %struct.sock*, %struct.sock** %4, align 8
  %107 = load %struct.request_sock*, %struct.request_sock** %3, align 8
  %108 = call i32 @inet_rtx_syn_ack(%struct.sock* %106, %struct.request_sock* %107)
  %109 = icmp ne i32 %108, 0
  br i1 %109, label %110, label %116

110:                                              ; preds = %105
  %111 = load %struct.request_sock*, %struct.request_sock** %3, align 8
  %112 = call %struct.TYPE_6__* @inet_rsk(%struct.request_sock* %111)
  %113 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %112, i32 0, i32 0
  %114 = load i64, i64* %113, align 8
  %115 = icmp ne i64 %114, 0
  br i1 %115, label %116, label %140

116:                                              ; preds = %110, %105, %102
  %117 = load %struct.request_sock*, %struct.request_sock** %3, align 8
  %118 = getelementptr inbounds %struct.request_sock, %struct.request_sock* %117, i32 0, i32 0
  %119 = load i32, i32* %118, align 8
  %120 = add nsw i32 %119, 1
  store i32 %120, i32* %118, align 8
  %121 = icmp eq i32 %119, 0
  br i1 %121, label %122, label %126

122:                                              ; preds = %116
  %123 = load %struct.request_sock_queue*, %struct.request_sock_queue** %7, align 8
  %124 = getelementptr inbounds %struct.request_sock_queue, %struct.request_sock_queue* %123, i32 0, i32 0
  %125 = call i32 @atomic_dec(i32* %124)
  br label %126

126:                                              ; preds = %122, %116
  %127 = load i32, i32* @TCP_TIMEOUT_INIT, align 4
  %128 = load %struct.request_sock*, %struct.request_sock** %3, align 8
  %129 = getelementptr inbounds %struct.request_sock, %struct.request_sock* %128, i32 0, i32 0
  %130 = load i32, i32* %129, align 8
  %131 = shl i32 %127, %130
  %132 = load i32, i32* @TCP_RTO_MAX, align 4
  %133 = call i64 @min(i32 %131, i32 %132)
  store i64 %133, i64* %15, align 8
  %134 = load %struct.request_sock*, %struct.request_sock** %3, align 8
  %135 = getelementptr inbounds %struct.request_sock, %struct.request_sock* %134, i32 0, i32 1
  %136 = load i64, i64* @jiffies, align 8
  %137 = load i64, i64* %15, align 8
  %138 = add i64 %136, %137
  %139 = call i32 @mod_timer(i32* %135, i64 %138)
  br label %145

140:                                              ; preds = %110, %87
  br label %141

141:                                              ; preds = %140, %34
  %142 = load %struct.sock*, %struct.sock** %4, align 8
  %143 = load %struct.request_sock*, %struct.request_sock** %3, align 8
  %144 = call i32 @inet_csk_reqsk_queue_drop_and_put(%struct.sock* %142, %struct.request_sock* %143)
  br label %145

145:                                              ; preds = %141, %126
  ret void
}

declare dso_local %struct.request_sock* @from_timer(i32, %struct.timer_list*, i32) #1

declare dso_local %struct.net* @sock_net(%struct.sock*) #1

declare dso_local %struct.inet_connection_sock* @inet_csk(%struct.sock*) #1

declare dso_local i64 @inet_sk_state_load(%struct.sock*) #1

declare dso_local i32 @reqsk_queue_len(%struct.request_sock_queue*) #1

declare dso_local i32 @max(i32, i32) #1

declare dso_local i32 @reqsk_queue_len_young(%struct.request_sock_queue*) #1

declare dso_local i32 @READ_ONCE(i32) #1

declare dso_local i32 @syn_ack_recalc(%struct.request_sock*, i32, i32, i32, i32*, i32*) #1

declare dso_local i32 @inet_rtx_syn_ack(%struct.sock*, %struct.request_sock*) #1

declare dso_local %struct.TYPE_6__* @inet_rsk(%struct.request_sock*) #1

declare dso_local i32 @atomic_dec(i32*) #1

declare dso_local i64 @min(i32, i32) #1

declare dso_local i32 @mod_timer(i32*, i64) #1

declare dso_local i32 @inet_csk_reqsk_queue_drop_and_put(%struct.sock*, %struct.request_sock*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

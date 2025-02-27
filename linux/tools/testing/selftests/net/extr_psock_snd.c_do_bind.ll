; ModuleID = '/home/carl/AnghaBench/linux/tools/testing/selftests/net/extr_psock_snd.c_do_bind.c'
source_filename = "/home/carl/AnghaBench/linux/tools/testing/selftests/net/extr_psock_snd.c_do_bind.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sockaddr_ll = type { i32, i32, i32, i32 }

@AF_PACKET = common dso_local global i32 0, align 4
@ETH_P_IP = common dso_local global i32 0, align 4
@cfg_ifname = common dso_local global i32 0, align 4
@errno = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [15 x i8] c"if_nametoindex\00", align 1
@.str.1 = private unnamed_addr constant [5 x i8] c"bind\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32)* @do_bind to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @do_bind(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.sockaddr_ll, align 4
  store i32 %0, i32* %2, align 4
  %4 = bitcast %struct.sockaddr_ll* %3 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %4, i8 0, i64 16, i1 false)
  %5 = load i32, i32* @AF_PACKET, align 4
  %6 = getelementptr inbounds %struct.sockaddr_ll, %struct.sockaddr_ll* %3, i32 0, i32 2
  store i32 %5, i32* %6, align 4
  %7 = load i32, i32* @ETH_P_IP, align 4
  %8 = call i32 @htons(i32 %7)
  %9 = getelementptr inbounds %struct.sockaddr_ll, %struct.sockaddr_ll* %3, i32 0, i32 1
  store i32 %8, i32* %9, align 4
  %10 = load i32, i32* @cfg_ifname, align 4
  %11 = call i32 @if_nametoindex(i32 %10)
  %12 = getelementptr inbounds %struct.sockaddr_ll, %struct.sockaddr_ll* %3, i32 0, i32 0
  store i32 %11, i32* %12, align 4
  %13 = getelementptr inbounds %struct.sockaddr_ll, %struct.sockaddr_ll* %3, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %19, label %16

16:                                               ; preds = %1
  %17 = load i32, i32* @errno, align 4
  %18 = call i32 @error(i32 1, i32 %17, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0))
  br label %19

19:                                               ; preds = %16, %1
  %20 = load i32, i32* %2, align 4
  %21 = bitcast %struct.sockaddr_ll* %3 to i8*
  %22 = call i64 @bind(i32 %20, i8* %21, i32 16)
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %27

24:                                               ; preds = %19
  %25 = load i32, i32* @errno, align 4
  %26 = call i32 @error(i32 1, i32 %25, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0))
  br label %27

27:                                               ; preds = %24, %19
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @htons(i32) #2

declare dso_local i32 @if_nametoindex(i32) #2

declare dso_local i32 @error(i32, i32, i8*) #2

declare dso_local i64 @bind(i32, i8*, i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

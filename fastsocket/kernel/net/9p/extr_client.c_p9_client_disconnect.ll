; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/9p/extr_client.c_p9_client_disconnect.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/9p/extr_client.c_p9_client_disconnect.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.p9_client = type { i32 }

@P9_DEBUG_9P = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [9 x i8] c"clnt %p\0A\00", align 1
@Disconnected = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @p9_client_disconnect(%struct.p9_client* %0) #0 {
  %2 = alloca %struct.p9_client*, align 8
  store %struct.p9_client* %0, %struct.p9_client** %2, align 8
  %3 = load i32, i32* @P9_DEBUG_9P, align 4
  %4 = load %struct.p9_client*, %struct.p9_client** %2, align 8
  %5 = call i32 @P9_DPRINTK(i32 %3, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0), %struct.p9_client* %4)
  %6 = load i32, i32* @Disconnected, align 4
  %7 = load %struct.p9_client*, %struct.p9_client** %2, align 8
  %8 = getelementptr inbounds %struct.p9_client, %struct.p9_client* %7, i32 0, i32 0
  store i32 %6, i32* %8, align 4
  ret void
}

declare dso_local i32 @P9_DPRINTK(i32, i8*, %struct.p9_client*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

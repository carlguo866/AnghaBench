; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/irda/irnet/extr_irnet_irda.c_irnet_destroy_server.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/irda/irnet/extr_irnet_irda.c_irnet_destroy_server.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32, i64, i32 }

@IRDA_SERV_TRACE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [4 x i8] c"()\0A\00", align 1
@irnet_server = common dso_local global %struct.TYPE_2__ zeroinitializer, align 8
@.str.1 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @irnet_destroy_server to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @irnet_destroy_server() #0 {
  %1 = load i32, i32* @IRDA_SERV_TRACE, align 4
  %2 = call i32 @DENTER(i32 %1, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0))
  %3 = load i64, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @irnet_server, i32 0, i32 1), align 8
  %4 = icmp ne i64 %3, 0
  br i1 %4, label %5, label %8

5:                                                ; preds = %0
  %6 = load i64, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @irnet_server, i32 0, i32 1), align 8
  %7 = call i32 @irias_delete_object(i64 %6)
  br label %8

8:                                                ; preds = %5, %0
  %9 = call i32 @irda_irnet_destroy(i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @irnet_server, i32 0, i32 0))
  %10 = load i32, i32* @IRDA_SERV_TRACE, align 4
  %11 = call i32 @DEXIT(i32 %10, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0))
  ret void
}

declare dso_local i32 @DENTER(i32, i8*) #1

declare dso_local i32 @irias_delete_object(i64) #1

declare dso_local i32 @irda_irnet_destroy(i32*) #1

declare dso_local i32 @DEXIT(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

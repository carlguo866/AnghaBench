; ModuleID = '/home/carl/AnghaBench/beanstalkd/extr_testutil.c_cttest_optlseparate.c'
source_filename = "/home/carl/AnghaBench/beanstalkd/extr_testutil.c_cttest_optlseparate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32 }

@.str = private unnamed_addr constant [3 x i8] c"-l\00", align 1
@.str.1 = private unnamed_addr constant [10 x i8] c"localhost\00", align 1
@__const.cttest_optlseparate.args = private unnamed_addr constant [3 x i8*] [i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i32 0, i32 0), i8* null], align 16
@srv = common dso_local global %struct.TYPE_3__ zeroinitializer, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @cttest_optlseparate() #0 {
  %1 = alloca [3 x i8*], align 16
  %2 = bitcast [3 x i8*]* %1 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %2, i8* align 16 bitcast ([3 x i8*]* @__const.cttest_optlseparate.args to i8*), i64 24, i1 false)
  %3 = getelementptr inbounds [3 x i8*], [3 x i8*]* %1, i64 0, i64 0
  %4 = call i32 @optparse(%struct.TYPE_3__* @srv, i8** %3)
  %5 = load i32, i32* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @srv, i32 0, i32 0), align 4
  %6 = call i64 @strcmp(i32 %5, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i64 0, i64 0))
  %7 = icmp eq i64 %6, 0
  %8 = zext i1 %7 to i32
  %9 = call i32 @assert(i32 %8)
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @optparse(%struct.TYPE_3__*, i8**) #2

declare dso_local i32 @assert(i32) #2

declare dso_local i64 @strcmp(i32, i8*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

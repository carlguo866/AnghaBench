; ModuleID = '/home/carl/AnghaBench/freebsd/sys/netsmb/extr_smb_conn.c_smb_sm_init.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/netsmb/extr_smb_conn.c_smb_sm_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32 }

@smb_vclist = common dso_local global %struct.TYPE_4__ zeroinitializer, align 4
@SMBL_SM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [12 x i8] c"smbsm ilock\00", align 1
@.str.1 = private unnamed_addr constant [6 x i8] c"smbsm\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @smb_sm_init() #0 {
  %1 = load i32, i32* @SMBL_SM, align 4
  %2 = call i32 @smb_co_init(%struct.TYPE_4__* @smb_vclist, i32 %1, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0))
  %3 = call i32 @sx_xlock(i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @smb_vclist, i32 0, i32 0))
  %4 = call i32 @smb_co_unlock(%struct.TYPE_4__* @smb_vclist)
  %5 = call i32 @sx_unlock(i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @smb_vclist, i32 0, i32 0))
  ret i32 0
}

declare dso_local i32 @smb_co_init(%struct.TYPE_4__*, i32, i8*, i8*) #1

declare dso_local i32 @sx_xlock(i32*) #1

declare dso_local i32 @smb_co_unlock(%struct.TYPE_4__*) #1

declare dso_local i32 @sx_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

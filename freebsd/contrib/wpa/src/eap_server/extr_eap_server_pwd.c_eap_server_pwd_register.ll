; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/src/eap_server/extr_eap_server_pwd.c_eap_server_pwd_register.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/src/eap_server/extr_eap_server_pwd.c_eap_server_pwd_register.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.eap_method = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }

@EAP_SERVER_METHOD_INTERFACE_VERSION = common dso_local global i32 0, align 4
@EAP_VENDOR_IETF = common dso_local global i32 0, align 4
@EAP_TYPE_PWD = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [4 x i8] c"PWD\00", align 1
@eap_pwd_init = common dso_local global i32 0, align 4
@eap_pwd_reset = common dso_local global i32 0, align 4
@eap_pwd_build_req = common dso_local global i32 0, align 4
@eap_pwd_check = common dso_local global i32 0, align 4
@eap_pwd_process = common dso_local global i32 0, align 4
@eap_pwd_is_done = common dso_local global i32 0, align 4
@eap_pwd_getkey = common dso_local global i32 0, align 4
@eap_pwd_get_emsk = common dso_local global i32 0, align 4
@eap_pwd_is_success = common dso_local global i32 0, align 4
@eap_pwd_get_session_id = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @eap_server_pwd_register() #0 {
  %1 = alloca i32, align 4
  %2 = alloca %struct.eap_method*, align 8
  %3 = load i32, i32* @EAP_SERVER_METHOD_INTERFACE_VERSION, align 4
  %4 = load i32, i32* @EAP_VENDOR_IETF, align 4
  %5 = load i32, i32* @EAP_TYPE_PWD, align 4
  %6 = call %struct.eap_method* @eap_server_method_alloc(i32 %3, i32 %4, i32 %5, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0))
  store %struct.eap_method* %6, %struct.eap_method** %2, align 8
  %7 = load %struct.eap_method*, %struct.eap_method** %2, align 8
  %8 = icmp eq %struct.eap_method* %7, null
  br i1 %8, label %9, label %10

9:                                                ; preds = %0
  store i32 -1, i32* %1, align 4
  br label %43

10:                                               ; preds = %0
  %11 = load i32, i32* @eap_pwd_init, align 4
  %12 = load %struct.eap_method*, %struct.eap_method** %2, align 8
  %13 = getelementptr inbounds %struct.eap_method, %struct.eap_method* %12, i32 0, i32 9
  store i32 %11, i32* %13, align 4
  %14 = load i32, i32* @eap_pwd_reset, align 4
  %15 = load %struct.eap_method*, %struct.eap_method** %2, align 8
  %16 = getelementptr inbounds %struct.eap_method, %struct.eap_method* %15, i32 0, i32 8
  store i32 %14, i32* %16, align 4
  %17 = load i32, i32* @eap_pwd_build_req, align 4
  %18 = load %struct.eap_method*, %struct.eap_method** %2, align 8
  %19 = getelementptr inbounds %struct.eap_method, %struct.eap_method* %18, i32 0, i32 7
  store i32 %17, i32* %19, align 4
  %20 = load i32, i32* @eap_pwd_check, align 4
  %21 = load %struct.eap_method*, %struct.eap_method** %2, align 8
  %22 = getelementptr inbounds %struct.eap_method, %struct.eap_method* %21, i32 0, i32 6
  store i32 %20, i32* %22, align 4
  %23 = load i32, i32* @eap_pwd_process, align 4
  %24 = load %struct.eap_method*, %struct.eap_method** %2, align 8
  %25 = getelementptr inbounds %struct.eap_method, %struct.eap_method* %24, i32 0, i32 5
  store i32 %23, i32* %25, align 4
  %26 = load i32, i32* @eap_pwd_is_done, align 4
  %27 = load %struct.eap_method*, %struct.eap_method** %2, align 8
  %28 = getelementptr inbounds %struct.eap_method, %struct.eap_method* %27, i32 0, i32 4
  store i32 %26, i32* %28, align 4
  %29 = load i32, i32* @eap_pwd_getkey, align 4
  %30 = load %struct.eap_method*, %struct.eap_method** %2, align 8
  %31 = getelementptr inbounds %struct.eap_method, %struct.eap_method* %30, i32 0, i32 3
  store i32 %29, i32* %31, align 4
  %32 = load i32, i32* @eap_pwd_get_emsk, align 4
  %33 = load %struct.eap_method*, %struct.eap_method** %2, align 8
  %34 = getelementptr inbounds %struct.eap_method, %struct.eap_method* %33, i32 0, i32 2
  store i32 %32, i32* %34, align 4
  %35 = load i32, i32* @eap_pwd_is_success, align 4
  %36 = load %struct.eap_method*, %struct.eap_method** %2, align 8
  %37 = getelementptr inbounds %struct.eap_method, %struct.eap_method* %36, i32 0, i32 1
  store i32 %35, i32* %37, align 4
  %38 = load i32, i32* @eap_pwd_get_session_id, align 4
  %39 = load %struct.eap_method*, %struct.eap_method** %2, align 8
  %40 = getelementptr inbounds %struct.eap_method, %struct.eap_method* %39, i32 0, i32 0
  store i32 %38, i32* %40, align 4
  %41 = load %struct.eap_method*, %struct.eap_method** %2, align 8
  %42 = call i32 @eap_server_method_register(%struct.eap_method* %41)
  store i32 %42, i32* %1, align 4
  br label %43

43:                                               ; preds = %10, %9
  %44 = load i32, i32* %1, align 4
  ret i32 %44
}

declare dso_local %struct.eap_method* @eap_server_method_alloc(i32, i32, i32, i8*) #1

declare dso_local i32 @eap_server_method_register(%struct.eap_method*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

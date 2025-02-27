; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/crypto/extr_serpent.c_serpent_encrypt.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/crypto/extr_serpent.c_serpent_encrypt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.crypto_tfm = type { i32 }
%struct.serpent_ctx = type { i32* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.crypto_tfm*, i32*, i32*)* @serpent_encrypt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @serpent_encrypt(%struct.crypto_tfm* %0, i32* %1, i32* %2) #0 {
  %4 = alloca %struct.crypto_tfm*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca %struct.serpent_ctx*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store %struct.crypto_tfm* %0, %struct.crypto_tfm** %4, align 8
  store i32* %1, i32** %5, align 8
  store i32* %2, i32** %6, align 8
  %16 = load %struct.crypto_tfm*, %struct.crypto_tfm** %4, align 8
  %17 = call %struct.serpent_ctx* @crypto_tfm_ctx(%struct.crypto_tfm* %16)
  store %struct.serpent_ctx* %17, %struct.serpent_ctx** %7, align 8
  %18 = load %struct.serpent_ctx*, %struct.serpent_ctx** %7, align 8
  %19 = getelementptr inbounds %struct.serpent_ctx, %struct.serpent_ctx* %18, i32 0, i32 0
  %20 = load i32*, i32** %19, align 8
  store i32* %20, i32** %8, align 8
  %21 = load i32*, i32** %6, align 8
  store i32* %21, i32** %9, align 8
  %22 = load i32*, i32** %5, align 8
  store i32* %22, i32** %10, align 8
  %23 = load i32*, i32** %9, align 8
  %24 = getelementptr inbounds i32, i32* %23, i64 0
  %25 = load i32, i32* %24, align 4
  %26 = call i32 @le32_to_cpu(i32 %25)
  store i32 %26, i32* %11, align 4
  %27 = load i32*, i32** %9, align 8
  %28 = getelementptr inbounds i32, i32* %27, i64 1
  %29 = load i32, i32* %28, align 4
  %30 = call i32 @le32_to_cpu(i32 %29)
  store i32 %30, i32* %12, align 4
  %31 = load i32*, i32** %9, align 8
  %32 = getelementptr inbounds i32, i32* %31, i64 2
  %33 = load i32, i32* %32, align 4
  %34 = call i32 @le32_to_cpu(i32 %33)
  store i32 %34, i32* %13, align 4
  %35 = load i32*, i32** %9, align 8
  %36 = getelementptr inbounds i32, i32* %35, i64 3
  %37 = load i32, i32* %36, align 4
  %38 = call i32 @le32_to_cpu(i32 %37)
  store i32 %38, i32* %14, align 4
  %39 = load i32, i32* %11, align 4
  %40 = load i32, i32* %12, align 4
  %41 = load i32, i32* %13, align 4
  %42 = load i32, i32* %14, align 4
  %43 = call i32 @K(i32 %39, i32 %40, i32 %41, i32 %42, i32 0)
  %44 = load i32, i32* %11, align 4
  %45 = load i32, i32* %12, align 4
  %46 = load i32, i32* %13, align 4
  %47 = load i32, i32* %14, align 4
  %48 = load i32, i32* %15, align 4
  %49 = call i32 @S0(i32 %44, i32 %45, i32 %46, i32 %47, i32 %48)
  %50 = load i32, i32* %13, align 4
  %51 = load i32, i32* %12, align 4
  %52 = load i32, i32* %14, align 4
  %53 = load i32, i32* %11, align 4
  %54 = load i32, i32* %15, align 4
  %55 = call i32 @LK(i32 %50, i32 %51, i32 %52, i32 %53, i32 %54, i32 1)
  %56 = load i32, i32* %13, align 4
  %57 = load i32, i32* %12, align 4
  %58 = load i32, i32* %14, align 4
  %59 = load i32, i32* %11, align 4
  %60 = load i32, i32* %15, align 4
  %61 = call i32 @S1(i32 %56, i32 %57, i32 %58, i32 %59, i32 %60)
  %62 = load i32, i32* %15, align 4
  %63 = load i32, i32* %14, align 4
  %64 = load i32, i32* %11, align 4
  %65 = load i32, i32* %13, align 4
  %66 = load i32, i32* %12, align 4
  %67 = call i32 @LK(i32 %62, i32 %63, i32 %64, i32 %65, i32 %66, i32 2)
  %68 = load i32, i32* %15, align 4
  %69 = load i32, i32* %14, align 4
  %70 = load i32, i32* %11, align 4
  %71 = load i32, i32* %13, align 4
  %72 = load i32, i32* %12, align 4
  %73 = call i32 @S2(i32 %68, i32 %69, i32 %70, i32 %71, i32 %72)
  %74 = load i32, i32* %12, align 4
  %75 = load i32, i32* %14, align 4
  %76 = load i32, i32* %15, align 4
  %77 = load i32, i32* %13, align 4
  %78 = load i32, i32* %11, align 4
  %79 = call i32 @LK(i32 %74, i32 %75, i32 %76, i32 %77, i32 %78, i32 3)
  %80 = load i32, i32* %12, align 4
  %81 = load i32, i32* %14, align 4
  %82 = load i32, i32* %15, align 4
  %83 = load i32, i32* %13, align 4
  %84 = load i32, i32* %11, align 4
  %85 = call i32 @S3(i32 %80, i32 %81, i32 %82, i32 %83, i32 %84)
  %86 = load i32, i32* %13, align 4
  %87 = load i32, i32* %11, align 4
  %88 = load i32, i32* %14, align 4
  %89 = load i32, i32* %12, align 4
  %90 = load i32, i32* %15, align 4
  %91 = call i32 @LK(i32 %86, i32 %87, i32 %88, i32 %89, i32 %90, i32 4)
  %92 = load i32, i32* %13, align 4
  %93 = load i32, i32* %11, align 4
  %94 = load i32, i32* %14, align 4
  %95 = load i32, i32* %12, align 4
  %96 = load i32, i32* %15, align 4
  %97 = call i32 @S4(i32 %92, i32 %93, i32 %94, i32 %95, i32 %96)
  %98 = load i32, i32* %11, align 4
  %99 = load i32, i32* %14, align 4
  %100 = load i32, i32* %12, align 4
  %101 = load i32, i32* %15, align 4
  %102 = load i32, i32* %13, align 4
  %103 = call i32 @LK(i32 %98, i32 %99, i32 %100, i32 %101, i32 %102, i32 5)
  %104 = load i32, i32* %11, align 4
  %105 = load i32, i32* %14, align 4
  %106 = load i32, i32* %12, align 4
  %107 = load i32, i32* %15, align 4
  %108 = load i32, i32* %13, align 4
  %109 = call i32 @S5(i32 %104, i32 %105, i32 %106, i32 %107, i32 %108)
  %110 = load i32, i32* %13, align 4
  %111 = load i32, i32* %11, align 4
  %112 = load i32, i32* %14, align 4
  %113 = load i32, i32* %15, align 4
  %114 = load i32, i32* %12, align 4
  %115 = call i32 @LK(i32 %110, i32 %111, i32 %112, i32 %113, i32 %114, i32 6)
  %116 = load i32, i32* %13, align 4
  %117 = load i32, i32* %11, align 4
  %118 = load i32, i32* %14, align 4
  %119 = load i32, i32* %15, align 4
  %120 = load i32, i32* %12, align 4
  %121 = call i32 @S6(i32 %116, i32 %117, i32 %118, i32 %119, i32 %120)
  %122 = load i32, i32* %14, align 4
  %123 = load i32, i32* %12, align 4
  %124 = load i32, i32* %11, align 4
  %125 = load i32, i32* %15, align 4
  %126 = load i32, i32* %13, align 4
  %127 = call i32 @LK(i32 %122, i32 %123, i32 %124, i32 %125, i32 %126, i32 7)
  %128 = load i32, i32* %14, align 4
  %129 = load i32, i32* %12, align 4
  %130 = load i32, i32* %11, align 4
  %131 = load i32, i32* %15, align 4
  %132 = load i32, i32* %13, align 4
  %133 = call i32 @S7(i32 %128, i32 %129, i32 %130, i32 %131, i32 %132)
  %134 = load i32, i32* %13, align 4
  %135 = load i32, i32* %11, align 4
  %136 = load i32, i32* %15, align 4
  %137 = load i32, i32* %14, align 4
  %138 = load i32, i32* %12, align 4
  %139 = call i32 @LK(i32 %134, i32 %135, i32 %136, i32 %137, i32 %138, i32 8)
  %140 = load i32, i32* %13, align 4
  %141 = load i32, i32* %11, align 4
  %142 = load i32, i32* %15, align 4
  %143 = load i32, i32* %14, align 4
  %144 = load i32, i32* %12, align 4
  %145 = call i32 @S0(i32 %140, i32 %141, i32 %142, i32 %143, i32 %144)
  %146 = load i32, i32* %15, align 4
  %147 = load i32, i32* %11, align 4
  %148 = load i32, i32* %14, align 4
  %149 = load i32, i32* %13, align 4
  %150 = load i32, i32* %12, align 4
  %151 = call i32 @LK(i32 %146, i32 %147, i32 %148, i32 %149, i32 %150, i32 9)
  %152 = load i32, i32* %15, align 4
  %153 = load i32, i32* %11, align 4
  %154 = load i32, i32* %14, align 4
  %155 = load i32, i32* %13, align 4
  %156 = load i32, i32* %12, align 4
  %157 = call i32 @S1(i32 %152, i32 %153, i32 %154, i32 %155, i32 %156)
  %158 = load i32, i32* %12, align 4
  %159 = load i32, i32* %14, align 4
  %160 = load i32, i32* %13, align 4
  %161 = load i32, i32* %15, align 4
  %162 = load i32, i32* %11, align 4
  %163 = call i32 @LK(i32 %158, i32 %159, i32 %160, i32 %161, i32 %162, i32 10)
  %164 = load i32, i32* %12, align 4
  %165 = load i32, i32* %14, align 4
  %166 = load i32, i32* %13, align 4
  %167 = load i32, i32* %15, align 4
  %168 = load i32, i32* %11, align 4
  %169 = call i32 @S2(i32 %164, i32 %165, i32 %166, i32 %167, i32 %168)
  %170 = load i32, i32* %11, align 4
  %171 = load i32, i32* %14, align 4
  %172 = load i32, i32* %12, align 4
  %173 = load i32, i32* %15, align 4
  %174 = load i32, i32* %13, align 4
  %175 = call i32 @LK(i32 %170, i32 %171, i32 %172, i32 %173, i32 %174, i32 11)
  %176 = load i32, i32* %11, align 4
  %177 = load i32, i32* %14, align 4
  %178 = load i32, i32* %12, align 4
  %179 = load i32, i32* %15, align 4
  %180 = load i32, i32* %13, align 4
  %181 = call i32 @S3(i32 %176, i32 %177, i32 %178, i32 %179, i32 %180)
  %182 = load i32, i32* %15, align 4
  %183 = load i32, i32* %13, align 4
  %184 = load i32, i32* %14, align 4
  %185 = load i32, i32* %11, align 4
  %186 = load i32, i32* %12, align 4
  %187 = call i32 @LK(i32 %182, i32 %183, i32 %184, i32 %185, i32 %186, i32 12)
  %188 = load i32, i32* %15, align 4
  %189 = load i32, i32* %13, align 4
  %190 = load i32, i32* %14, align 4
  %191 = load i32, i32* %11, align 4
  %192 = load i32, i32* %12, align 4
  %193 = call i32 @S4(i32 %188, i32 %189, i32 %190, i32 %191, i32 %192)
  %194 = load i32, i32* %13, align 4
  %195 = load i32, i32* %14, align 4
  %196 = load i32, i32* %11, align 4
  %197 = load i32, i32* %12, align 4
  %198 = load i32, i32* %15, align 4
  %199 = call i32 @LK(i32 %194, i32 %195, i32 %196, i32 %197, i32 %198, i32 13)
  %200 = load i32, i32* %13, align 4
  %201 = load i32, i32* %14, align 4
  %202 = load i32, i32* %11, align 4
  %203 = load i32, i32* %12, align 4
  %204 = load i32, i32* %15, align 4
  %205 = call i32 @S5(i32 %200, i32 %201, i32 %202, i32 %203, i32 %204)
  %206 = load i32, i32* %15, align 4
  %207 = load i32, i32* %13, align 4
  %208 = load i32, i32* %14, align 4
  %209 = load i32, i32* %12, align 4
  %210 = load i32, i32* %11, align 4
  %211 = call i32 @LK(i32 %206, i32 %207, i32 %208, i32 %209, i32 %210, i32 14)
  %212 = load i32, i32* %15, align 4
  %213 = load i32, i32* %13, align 4
  %214 = load i32, i32* %14, align 4
  %215 = load i32, i32* %12, align 4
  %216 = load i32, i32* %11, align 4
  %217 = call i32 @S6(i32 %212, i32 %213, i32 %214, i32 %215, i32 %216)
  %218 = load i32, i32* %14, align 4
  %219 = load i32, i32* %11, align 4
  %220 = load i32, i32* %13, align 4
  %221 = load i32, i32* %12, align 4
  %222 = load i32, i32* %15, align 4
  %223 = call i32 @LK(i32 %218, i32 %219, i32 %220, i32 %221, i32 %222, i32 15)
  %224 = load i32, i32* %14, align 4
  %225 = load i32, i32* %11, align 4
  %226 = load i32, i32* %13, align 4
  %227 = load i32, i32* %12, align 4
  %228 = load i32, i32* %15, align 4
  %229 = call i32 @S7(i32 %224, i32 %225, i32 %226, i32 %227, i32 %228)
  %230 = load i32, i32* %15, align 4
  %231 = load i32, i32* %13, align 4
  %232 = load i32, i32* %12, align 4
  %233 = load i32, i32* %14, align 4
  %234 = load i32, i32* %11, align 4
  %235 = call i32 @LK(i32 %230, i32 %231, i32 %232, i32 %233, i32 %234, i32 16)
  %236 = load i32, i32* %15, align 4
  %237 = load i32, i32* %13, align 4
  %238 = load i32, i32* %12, align 4
  %239 = load i32, i32* %14, align 4
  %240 = load i32, i32* %11, align 4
  %241 = call i32 @S0(i32 %236, i32 %237, i32 %238, i32 %239, i32 %240)
  %242 = load i32, i32* %12, align 4
  %243 = load i32, i32* %13, align 4
  %244 = load i32, i32* %14, align 4
  %245 = load i32, i32* %15, align 4
  %246 = load i32, i32* %11, align 4
  %247 = call i32 @LK(i32 %242, i32 %243, i32 %244, i32 %245, i32 %246, i32 17)
  %248 = load i32, i32* %12, align 4
  %249 = load i32, i32* %13, align 4
  %250 = load i32, i32* %14, align 4
  %251 = load i32, i32* %15, align 4
  %252 = load i32, i32* %11, align 4
  %253 = call i32 @S1(i32 %248, i32 %249, i32 %250, i32 %251, i32 %252)
  %254 = load i32, i32* %11, align 4
  %255 = load i32, i32* %14, align 4
  %256 = load i32, i32* %15, align 4
  %257 = load i32, i32* %12, align 4
  %258 = load i32, i32* %13, align 4
  %259 = call i32 @LK(i32 %254, i32 %255, i32 %256, i32 %257, i32 %258, i32 18)
  %260 = load i32, i32* %11, align 4
  %261 = load i32, i32* %14, align 4
  %262 = load i32, i32* %15, align 4
  %263 = load i32, i32* %12, align 4
  %264 = load i32, i32* %13, align 4
  %265 = call i32 @S2(i32 %260, i32 %261, i32 %262, i32 %263, i32 %264)
  %266 = load i32, i32* %13, align 4
  %267 = load i32, i32* %14, align 4
  %268 = load i32, i32* %11, align 4
  %269 = load i32, i32* %12, align 4
  %270 = load i32, i32* %15, align 4
  %271 = call i32 @LK(i32 %266, i32 %267, i32 %268, i32 %269, i32 %270, i32 19)
  %272 = load i32, i32* %13, align 4
  %273 = load i32, i32* %14, align 4
  %274 = load i32, i32* %11, align 4
  %275 = load i32, i32* %12, align 4
  %276 = load i32, i32* %15, align 4
  %277 = call i32 @S3(i32 %272, i32 %273, i32 %274, i32 %275, i32 %276)
  %278 = load i32, i32* %12, align 4
  %279 = load i32, i32* %15, align 4
  %280 = load i32, i32* %14, align 4
  %281 = load i32, i32* %13, align 4
  %282 = load i32, i32* %11, align 4
  %283 = call i32 @LK(i32 %278, i32 %279, i32 %280, i32 %281, i32 %282, i32 20)
  %284 = load i32, i32* %12, align 4
  %285 = load i32, i32* %15, align 4
  %286 = load i32, i32* %14, align 4
  %287 = load i32, i32* %13, align 4
  %288 = load i32, i32* %11, align 4
  %289 = call i32 @S4(i32 %284, i32 %285, i32 %286, i32 %287, i32 %288)
  %290 = load i32, i32* %15, align 4
  %291 = load i32, i32* %14, align 4
  %292 = load i32, i32* %13, align 4
  %293 = load i32, i32* %11, align 4
  %294 = load i32, i32* %12, align 4
  %295 = call i32 @LK(i32 %290, i32 %291, i32 %292, i32 %293, i32 %294, i32 21)
  %296 = load i32, i32* %15, align 4
  %297 = load i32, i32* %14, align 4
  %298 = load i32, i32* %13, align 4
  %299 = load i32, i32* %11, align 4
  %300 = load i32, i32* %12, align 4
  %301 = call i32 @S5(i32 %296, i32 %297, i32 %298, i32 %299, i32 %300)
  %302 = load i32, i32* %12, align 4
  %303 = load i32, i32* %15, align 4
  %304 = load i32, i32* %14, align 4
  %305 = load i32, i32* %11, align 4
  %306 = load i32, i32* %13, align 4
  %307 = call i32 @LK(i32 %302, i32 %303, i32 %304, i32 %305, i32 %306, i32 22)
  %308 = load i32, i32* %12, align 4
  %309 = load i32, i32* %15, align 4
  %310 = load i32, i32* %14, align 4
  %311 = load i32, i32* %11, align 4
  %312 = load i32, i32* %13, align 4
  %313 = call i32 @S6(i32 %308, i32 %309, i32 %310, i32 %311, i32 %312)
  %314 = load i32, i32* %14, align 4
  %315 = load i32, i32* %13, align 4
  %316 = load i32, i32* %15, align 4
  %317 = load i32, i32* %11, align 4
  %318 = load i32, i32* %12, align 4
  %319 = call i32 @LK(i32 %314, i32 %315, i32 %316, i32 %317, i32 %318, i32 23)
  %320 = load i32, i32* %14, align 4
  %321 = load i32, i32* %13, align 4
  %322 = load i32, i32* %15, align 4
  %323 = load i32, i32* %11, align 4
  %324 = load i32, i32* %12, align 4
  %325 = call i32 @S7(i32 %320, i32 %321, i32 %322, i32 %323, i32 %324)
  %326 = load i32, i32* %12, align 4
  %327 = load i32, i32* %15, align 4
  %328 = load i32, i32* %11, align 4
  %329 = load i32, i32* %14, align 4
  %330 = load i32, i32* %13, align 4
  %331 = call i32 @LK(i32 %326, i32 %327, i32 %328, i32 %329, i32 %330, i32 24)
  %332 = load i32, i32* %12, align 4
  %333 = load i32, i32* %15, align 4
  %334 = load i32, i32* %11, align 4
  %335 = load i32, i32* %14, align 4
  %336 = load i32, i32* %13, align 4
  %337 = call i32 @S0(i32 %332, i32 %333, i32 %334, i32 %335, i32 %336)
  %338 = load i32, i32* %11, align 4
  %339 = load i32, i32* %15, align 4
  %340 = load i32, i32* %14, align 4
  %341 = load i32, i32* %12, align 4
  %342 = load i32, i32* %13, align 4
  %343 = call i32 @LK(i32 %338, i32 %339, i32 %340, i32 %341, i32 %342, i32 25)
  %344 = load i32, i32* %11, align 4
  %345 = load i32, i32* %15, align 4
  %346 = load i32, i32* %14, align 4
  %347 = load i32, i32* %12, align 4
  %348 = load i32, i32* %13, align 4
  %349 = call i32 @S1(i32 %344, i32 %345, i32 %346, i32 %347, i32 %348)
  %350 = load i32, i32* %13, align 4
  %351 = load i32, i32* %14, align 4
  %352 = load i32, i32* %12, align 4
  %353 = load i32, i32* %11, align 4
  %354 = load i32, i32* %15, align 4
  %355 = call i32 @LK(i32 %350, i32 %351, i32 %352, i32 %353, i32 %354, i32 26)
  %356 = load i32, i32* %13, align 4
  %357 = load i32, i32* %14, align 4
  %358 = load i32, i32* %12, align 4
  %359 = load i32, i32* %11, align 4
  %360 = load i32, i32* %15, align 4
  %361 = call i32 @S2(i32 %356, i32 %357, i32 %358, i32 %359, i32 %360)
  %362 = load i32, i32* %15, align 4
  %363 = load i32, i32* %14, align 4
  %364 = load i32, i32* %13, align 4
  %365 = load i32, i32* %11, align 4
  %366 = load i32, i32* %12, align 4
  %367 = call i32 @LK(i32 %362, i32 %363, i32 %364, i32 %365, i32 %366, i32 27)
  %368 = load i32, i32* %15, align 4
  %369 = load i32, i32* %14, align 4
  %370 = load i32, i32* %13, align 4
  %371 = load i32, i32* %11, align 4
  %372 = load i32, i32* %12, align 4
  %373 = call i32 @S3(i32 %368, i32 %369, i32 %370, i32 %371, i32 %372)
  %374 = load i32, i32* %11, align 4
  %375 = load i32, i32* %12, align 4
  %376 = load i32, i32* %14, align 4
  %377 = load i32, i32* %15, align 4
  %378 = load i32, i32* %13, align 4
  %379 = call i32 @LK(i32 %374, i32 %375, i32 %376, i32 %377, i32 %378, i32 28)
  %380 = load i32, i32* %11, align 4
  %381 = load i32, i32* %12, align 4
  %382 = load i32, i32* %14, align 4
  %383 = load i32, i32* %15, align 4
  %384 = load i32, i32* %13, align 4
  %385 = call i32 @S4(i32 %380, i32 %381, i32 %382, i32 %383, i32 %384)
  %386 = load i32, i32* %12, align 4
  %387 = load i32, i32* %14, align 4
  %388 = load i32, i32* %15, align 4
  %389 = load i32, i32* %13, align 4
  %390 = load i32, i32* %11, align 4
  %391 = call i32 @LK(i32 %386, i32 %387, i32 %388, i32 %389, i32 %390, i32 29)
  %392 = load i32, i32* %12, align 4
  %393 = load i32, i32* %14, align 4
  %394 = load i32, i32* %15, align 4
  %395 = load i32, i32* %13, align 4
  %396 = load i32, i32* %11, align 4
  %397 = call i32 @S5(i32 %392, i32 %393, i32 %394, i32 %395, i32 %396)
  %398 = load i32, i32* %11, align 4
  %399 = load i32, i32* %12, align 4
  %400 = load i32, i32* %14, align 4
  %401 = load i32, i32* %13, align 4
  %402 = load i32, i32* %15, align 4
  %403 = call i32 @LK(i32 %398, i32 %399, i32 %400, i32 %401, i32 %402, i32 30)
  %404 = load i32, i32* %11, align 4
  %405 = load i32, i32* %12, align 4
  %406 = load i32, i32* %14, align 4
  %407 = load i32, i32* %13, align 4
  %408 = load i32, i32* %15, align 4
  %409 = call i32 @S6(i32 %404, i32 %405, i32 %406, i32 %407, i32 %408)
  %410 = load i32, i32* %14, align 4
  %411 = load i32, i32* %15, align 4
  %412 = load i32, i32* %12, align 4
  %413 = load i32, i32* %13, align 4
  %414 = load i32, i32* %11, align 4
  %415 = call i32 @LK(i32 %410, i32 %411, i32 %412, i32 %413, i32 %414, i32 31)
  %416 = load i32, i32* %14, align 4
  %417 = load i32, i32* %15, align 4
  %418 = load i32, i32* %12, align 4
  %419 = load i32, i32* %13, align 4
  %420 = load i32, i32* %11, align 4
  %421 = call i32 @S7(i32 %416, i32 %417, i32 %418, i32 %419, i32 %420)
  %422 = load i32, i32* %11, align 4
  %423 = load i32, i32* %12, align 4
  %424 = load i32, i32* %13, align 4
  %425 = load i32, i32* %14, align 4
  %426 = call i32 @K(i32 %422, i32 %423, i32 %424, i32 %425, i32 32)
  %427 = load i32, i32* %11, align 4
  %428 = call i32 @cpu_to_le32(i32 %427)
  %429 = load i32*, i32** %10, align 8
  %430 = getelementptr inbounds i32, i32* %429, i64 0
  store i32 %428, i32* %430, align 4
  %431 = load i32, i32* %12, align 4
  %432 = call i32 @cpu_to_le32(i32 %431)
  %433 = load i32*, i32** %10, align 8
  %434 = getelementptr inbounds i32, i32* %433, i64 1
  store i32 %432, i32* %434, align 4
  %435 = load i32, i32* %13, align 4
  %436 = call i32 @cpu_to_le32(i32 %435)
  %437 = load i32*, i32** %10, align 8
  %438 = getelementptr inbounds i32, i32* %437, i64 2
  store i32 %436, i32* %438, align 4
  %439 = load i32, i32* %14, align 4
  %440 = call i32 @cpu_to_le32(i32 %439)
  %441 = load i32*, i32** %10, align 8
  %442 = getelementptr inbounds i32, i32* %441, i64 3
  store i32 %440, i32* %442, align 4
  ret void
}

declare dso_local %struct.serpent_ctx* @crypto_tfm_ctx(%struct.crypto_tfm*) #1

declare dso_local i32 @le32_to_cpu(i32) #1

declare dso_local i32 @K(i32, i32, i32, i32, i32) #1

declare dso_local i32 @S0(i32, i32, i32, i32, i32) #1

declare dso_local i32 @LK(i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @S1(i32, i32, i32, i32, i32) #1

declare dso_local i32 @S2(i32, i32, i32, i32, i32) #1

declare dso_local i32 @S3(i32, i32, i32, i32, i32) #1

declare dso_local i32 @S4(i32, i32, i32, i32, i32) #1

declare dso_local i32 @S5(i32, i32, i32, i32, i32) #1

declare dso_local i32 @S6(i32, i32, i32, i32, i32) #1

declare dso_local i32 @S7(i32, i32, i32, i32, i32) #1

declare dso_local i32 @cpu_to_le32(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
